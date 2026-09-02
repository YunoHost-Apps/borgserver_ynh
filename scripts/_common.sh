#!/bin/bash

source ../conf/helpers.sh

#=================================================
# COMMON HELPERS
#=================================================

create_repository() {
    # Create temporary directory for config_panel generation
    TEMP_DIR=$(mktemp -d)
    TEMP_CONFIGPANEL="$TEMP_DIR/config_panel.$repository_to_add.toml"
    repository="$repository_to_add"
    ynh_config_add --template="config_panel.repository.toml" --destination="$TEMP_CONFIGPANEL"
    ynh_delete_file_checksum "$TEMP_DIR/config_panel.$repository_to_add.toml"
    cat "$TEMP_CONFIGPANEL" >> "/etc/yunohost/apps/$app/config_panel.toml" || true
    ynh_safe_rm "$TEMP_DIR"
    ynh_exec_as_app mkdir -m 700 -p "$data_dir/$repository_to_add"
}

configure_repository() {
    repository="$1"
    
    # Remove possibly pre-existing line for this repository
    remove_repository_access "$repository"

    public_key="${!2}"
    if [[ -n "$public_key" ]]; then

        # TODO: not supported in borg v2
        # https://github.com/borgbackup/borg/issues/8824
        extra=""
        quota="${!3}"
        if [[ "$quota" != "" ]]; then
            extra="--storage-quota $quota"
        fi
        # TODO: add "--append-only" option suppport

        # See https://borgbackup.readthedocs.io/en/stable/usage/serve.html#examples
        borg_command="PATH=$install_dir/venv/bin/:$PATH borg serve $extra --restrict-to-repository $data_dir/$repository --lock-wait 600"
        ssh_opts="command=\\"\"$borg_command\\"\",restrict"

        ynh_exec_as_app bash -c "echo $ssh_opts $public_key >> $data_dir/.ssh/authorized_keys"
    fi
}

remove_repository_access() {
    repository="$1"
    ynh_exec_as_app sed -i "/^.*${data_dir//\//\\/}\/$repository\".*$/d" "$data_dir/.ssh/authorized_keys"
}

delete_repository() {
    ynh_print_info "Deleting repository '$repository_to_delete'..."
    delete_repository_values
    ynh_safe_rm "$data_dir/$repository_to_delete"
    sed -i "/# START_$repository_to_delete\b/,/# END_$repository_to_delete\b/d" "/etc/yunohost/apps/$app/config_panel.toml"
    remove_repository_access "$repository_to_delete"
}

delete_repository_values() {
    ynh_app_setting_delete --key="${repository_to_delete}_public_key"
    ynh_app_setting_delete --key="${repository_to_delete}_quota"
    ynh_app_setting_delete --key="${repository_to_delete}_alert_delay"
    ynh_app_setting_delete --key="${repository_to_delete}_alert_mails"
}
#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

install_borg_with_pip() {
    ynh_exec_as_app python3 -m venv --upgrade "$install_dir/venv"
    venvpy="$install_dir/venv/bin/python3"

    ynh_exec_as_app "$venvpy" -m pip install --upgrade setuptools wheel

    BORG_VERSION=$(ynh_app_upstream_version)
    ynh_exec_as_app "$venvpy" -m pip install borgbackup[pyfuse3]=="$BORG_VERSION"

    # Make venv accessible for every user
    #REMOVEME? Assuming the install dir is setup using ynh_setup_source, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chmod a+rX "$install_dir"
    #REMOVEME? Assuming the file is setup using ynh_config_add, the proper chmod/chowns are now already applied and it shouldn't be necessary to tweak perms | chmod a+rX -R "$install_dir/venv"
}

create_ssh_config() {
    ssh_dir=$1
    repository=$2
    extra=""
    if [[ -n "$quota" ]]; then
        extra="--storage-quota $quota"
    fi
    command="$install_dir/venv/bin/borg serve $extra --restrict-to-repository $repository"
    ssh_opts="command=\"$command\",no-pty,no-agent-forwarding,no-port-forwarding,no-X11-forwarding,no-user-rc"

    mkdir -p "$ssh_dir"
    touch "$ssh_dir/authorized_keys"
    echo "$ssh_opts $public_key" >> "$ssh_dir/authorized_keys"

    chown -R "$ssh_user:$ssh_user" "$ssh_dir"
    chmod -R u=rwX,go=--- "$ssh_dir"
}

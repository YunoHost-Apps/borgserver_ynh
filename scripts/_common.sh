#!/bin/bash

#=================================================
# PERSONAL HELPERS
#=================================================

install_borg_with_pip() {
    ynh_exec_as "$app" python3 -m venv --upgrade "$install_dir/venv"
    venvpy="$install_dir/venv/bin/python3"

    ynh_exec_as "$app" "$venvpy" -m pip install --upgrade setuptools wheel

    BORG_VERSION=$(ynh_app_upstream_version)
    ynh_exec_as "$app" "$venvpy" -m pip install borgbackup[pyfuse3]=="$BORG_VERSION"

    # Make venv accessible for ssh_user
    setfacl --recursive --modify g:$ssh_user:rwX,d:g:$ssh_user:rwX "$install_dir"
}

create_ssh_config() {
    ssh_dir=$1
    repository=$2
    extra=""
    if [[ -n "$quota" ]]; then
        extra="--storage-quota $quota"
    fi
    command="PATH=$install_dir/venv/bin/:$PATH borg serve $extra --restrict-to-repository $repository"
    ssh_opts="command=\"$command\",no-pty,no-agent-forwarding,no-port-forwarding,no-X11-forwarding,no-user-rc"

    mkdir -p "$ssh_dir"
    touch "$ssh_dir/authorized_keys"
    echo "$ssh_opts $public_key" > "$ssh_dir/authorized_keys"

    chown -R "$ssh_user:$ssh_user" "$ssh_dir"
    chmod -R u=rwX,go=--- "$ssh_dir"
}

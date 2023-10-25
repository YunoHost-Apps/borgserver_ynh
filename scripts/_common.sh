#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
# App package root directory should be the parent folder
PKG_DIR=$(cd ../; pwd)
BORG_VERSION=1.2.6

pkg_dependencies="python3-pip python3-dev libacl1-dev libssl-dev liblz4-dev python3-jinja2 python3-setuptools python3-venv virtualenv libfuse-dev pkg-config"

# Install borg with pip if borg is not here
install_borg_with_pip () {
    if [ -d /opt/borg-env ]; then
        /opt/borg-env/bin/python /opt/borg-env/bin/pip list | grep "borgbackup *$BORG_VERSION" || ynh_secure_remove /opt/borg-env
    fi
    if [ ! -d /opt/borg-env ]; then
        python3 -m venv /opt/borg-env
        /opt/borg-env/bin/python /opt/borg-env/bin/pip install wheel
        ynh_print_info --message="Installing/compiling borg, this may take some time..."
        /opt/borg-env/bin/python /opt/borg-env/bin/pip install borgbackup[fuse]==$BORG_VERSION
        echo "#!/bin/bash
    /opt/borg-env/bin/python /opt/borg-env/bin/borg \"\$@\"" > /usr/local/bin/borg
        touch "/opt/borg-env/$(ynh_get_debian_release)"
    fi
    # We need this to be executable by other borg apps
    chmod a+x /usr/local/bin/borg
}

#=================================================
# COMMON HELPERS
#=================================================
ynh_export () {
    local ynh_arg=""
    for var in $@;
    do
        ynh_arg=$(echo "$var" | awk '{print toupper($0)}')
        if [ "$var" == "path_url" ]; then
            ynh_arg="PATH"
        fi
        ynh_arg="YNH_APP_ARG_$ynh_arg"
        export $var="${!ynh_arg}"
    done
}
# Save listed var in YunoHost app settings 
# usage: ynh_save_args VARNAME1 [VARNAME2 [...]]
ynh_save_args () {
    for var in $@;
    do
        local setting_var="$var"
        if [ "$var" == "path_url" ]; then
            setting_var="path"
        fi
        ynh_app_setting_set $app $setting_var "${!var}"
    done
}

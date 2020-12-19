#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
# App package root directory should be the parent folder
PKG_DIR=$(cd ../; pwd)

pkg_dependencies="python3-pip python3-dev libacl1-dev libssl-dev liblz4-dev python-jinja2 python3-setuptools python-virtualenv"

# Install borg with pip if borg is not here
install_borg_with_pip () {
    if [ ! -d /opt/borg-env ]; then
        virtualenv --python=python3 /opt/borg-env
        /opt/borg-env/bin/python /opt/borg-env/bin/pip install borgbackup==1.1.14
        echo "#!/bin/bash
    /opt/borg-env/bin/python /opt/borg-env/bin/borg \"\$@\"" > /usr/local/bin/borg
        chmod a+x /usr/local/bin/borg
    fi
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



ynh_configure () {
    ynh_backup_if_checksum_is_different $2
    ynh_render_template "${PKG_DIR}/conf/$1.j2" $2
    ynh_store_file_checksum $2
}

ynh_read_json () {
    python3 -c "import sys, json;print(json.load(open('$1'))['$2'])"
}

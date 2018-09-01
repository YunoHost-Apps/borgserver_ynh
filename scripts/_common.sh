#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
# App package root directory should be the parent folder
PKG_DIR=$(cd ../; pwd)

pkg_dependencies="python3-pip python3-dev libacl1-dev libssl-dev liblz4-dev"

#=================================================
# COMMON HELPERS
#=================================================
ynh_export () {
    local ynh_arg=""
    for var in $@;
    do
        ynh_arg=$(echo $var | awk '{print toupper($0)}')
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
        ynh_app_setting_set $app $setting_var ${!var}
    done
}

# Render templates with Jinja2
#
# Attention : Variables should be exported before calling this helper to be
# accessible inside templates.
#
# usage: ynh_render_template some_template output_path
# | arg: some_template - Template file to be rendered
# | arg: output_path   - The path where the output will be redirected to
ynh_render_template() {
   local template_path=$1
   local output_path=$2
   # Taken from https://stackoverflow.com/a/35009576
   python2.7 -c 'import os, sys, jinja2; sys.stdout.write(
                    jinja2.Template(sys.stdin.read()
                 ).render(os.environ));' < $template_path > $output_path
}

ynh_configure () {
    ynh_backup_if_checksum_is_different $2
    ynh_render_template "${PKG_DIR}/conf/$1.j2" $2
    ynh_store_file_checksum $2
}

# Checks the app version to upgrade with the existing app version and returns:
# - UPGRADE_APP if the upstream app version has changed
# - UPGRADE_PACKAGE if only the YunoHost package has changed
#
## It stops the current script without error if the package is up-to-date
#
# This helper should be used to avoid an upgrade of an app, or the upstream part
# of it, when it's not needed
#
# To force an upgrade, even if the package is up to date,
# you have to set the variable YNH_FORCE_UPGRADE before.
# example: sudo YNH_FORCE_UPGRADE=1 yunohost app upgrade MyApp

# usage: ynh_check_app_version_changed
ynh_check_app_version_changed () {
  local force_upgrade=${YNH_FORCE_UPGRADE:-0}
  local package_check=${PACKAGE_CHECK_EXEC:-0}

  # By default, upstream app version has changed
  local return_value="UPGRADE_APP"

  local current_version=$(ynh_read_manifest "/etc/yunohost/apps/$YNH_APP_INSTANCE_NAME/manifest.json" "version" || echo 1.0)
  local current_upstream_version="${current_version/~ynh*/}"
  local update_version=$(ynh_read_manifest "../manifest.json" "version" || echo 1.0)
  local update_upstream_version="${update_version/~ynh*/}"

  if [ "$current_version" == "$update_version" ] ; then
      # Complete versions are the same
      if [ "$force_upgrade" != "0" ]
      then
        echo "Upgrade forced by YNH_FORCE_UPGRADE." >&2
        unset YNH_FORCE_UPGRADE
      elif [ "$package_check" != "0" ]
      then
        echo "Upgrade forced for package check." >&2
      else
        ynh_die "Up-to-date, nothing to do" 0
      fi
  elif [ "$current_upstream_version" == "$update_upstream_version" ] ; then
    # Upstream versions are the same, only YunoHost package versions differ
    return_value="UPGRADE_PACKAGE"
  fi
  echo $return_value
}


ynh_install_backports () {
    echo "deb http://httpredir.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/$app-stretch-backports.list
}

ynh_remove_backports () {
    rm /etc/apt/sources.list.d/$app-stretch-backports.list
}

#!/bin/bash

install_borg_with_pip() {
    ynh_exec_as_app python3 -m venv --upgrade "$install_dir/venv"
    venvpy="$install_dir/venv/bin/python3"

    ynh_exec_as_app "$venvpy" -m pip --cache-dir="$install_dir" install --upgrade setuptools wheel

    BORG_VERSION=$(ynh_app_upstream_version)
    ynh_exec_as_app "$venvpy" -m pip --cache-dir="$install_dir" install borgbackup[pyfuse3]=="$BORG_VERSION"
}

get_repositories_list() {
    find "$1" -mindepth 1 -maxdepth 1 -type d -not -name '.*' -exec basename {} \; | tr '\n' ' '
}
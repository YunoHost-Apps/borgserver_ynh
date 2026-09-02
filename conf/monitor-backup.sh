#!/usr/bin/env bash

app=borgserver

source __INSTALL_DIR__/helpers.sh
source /usr/share/yunohost/helpers

for repository in $(get_repositories_list __DATA_DIR__); do
    ALERT_DELAY=$(ynh_app_setting_get --key="${repository}_alert_delay")
    ALERT_MAILS=$(ynh_app_setting_get --key="${repository}_alert_mails")
    
    if [[ $ALERT_DELAY = "" || $(find "__DATA_DIR__/$repository" -path "*/data*" -follow -mtime "-${ALERT_DELAY}" -ls | wc -l) -gt 0 ]]; then
        :
    else
        echo "No file has been backed up in __DATA_DIR__/$repository since ${ALERT_DELAY} days" \
            | mail -s "[YNH] Backup missing : $repository" "$ALERT_MAILS"
    fi
done

#!/usr/bin/env bash

ALERT_DELAY="$(grep '^alert_delay: ' /etc/yunohost/apps/__APP__/settings.yml | awk -F\' '{print $2}')"



if [[ $(find /home/__SSH_USER__/backup/data -follow -mtime -${ALERT_DELAY} -ls | wc -l) > 0 ]]; then
    :
else
    echo "No file has been backuped in /home/__SSH_USER__ since ${ALERT_DELAY} days" \
        | mail -s "[YNH] Backup missing : __SSH_USER__" $(grep '^alert_mails: ' /etc/yunohost/apps/__APP__/settings.yml | awk '{print $2}')
fi

Setup a storage space to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed to work in combination with the [borg 'client' app](https://apps.yunohost.org/app/borg) installed on a different machine. It can also be used to provide backup storage to another (non-yunohost) computer that is running a Borg client (ex: Pika Backup)

### Changing parameters after install

The yunohost webadmin currently doesn't provide a way to change parameters after borgserver has been installed. That being said, it's still possible to edit the values by hand.

#### Manually changing the quota

1. Open `/home/BORG_USERNAME/.ssh/authorized_key`
2. Edit the line `command="borg serve --storage-quota 200G`. The `storage-quota` value must be a number followed by "G" (for gigabytes) or "T" (for terabytes).
3. Open `/etc/yunohost/apps/BORG_APP_NAME/settings.yml`
4. Edit the line `quota: '200G'`

#### Manually changing frequency of email alerts

1. Open `/etc/yunohost/apps/BORG_APP_NAME/settings.yml`
2. Edit the line `alert_delay: '30'` to the number of days

#### Manually changing other parameters

If you know what you're doing and you're feeling confident, the parameters affecting borgserver are generally in these 2 files:

- `/home/BORG_USERNAME/.ssh/authorized_key`
- `/etc/yunohost/apps/BORG_APP_NAME/settings.yml`

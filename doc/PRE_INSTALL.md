## Backuping another yunohost machine
If you plan to use borgserver to backup another yunohost machine, you should *first* install the other app (`borg_ynh`) on the other machine, and *then* this app (`borgserver_ynh`). After the install of the 'client' app (`borg_ynh`), your friend will be provided with the info, in particular an SSH public key, to be used for this app's installation.

## Backuping another _non-yunohost_ machine
It's also possible to install `borgserver` to provide backup storage to a friend's computer that isn't running yunohost and its `borg_ynh` app. Your friend will need to generate an SSH key and give it to you before installing this app (`borgserver_ynh`).
1. On the friend's computer generate an SSH key (example: `ssh-keygen -f borg_key`)
2. Open the `borg_key.pub` file and copy its content into the SSH key field below

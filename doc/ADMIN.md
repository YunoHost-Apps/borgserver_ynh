### Table of content
- Create repository and make it accessible
- Access a repository
- Removing access to a repository
- Delete a repository
- Manage pre-installation existing repositories
- Common Usage
    - Backuping other yunohost machine(s)
    - Backuping other _non-yunohost_ machine(s)
- Configuration
- Alert notifications
- Uninstall
- HELP!

#### Create repository and make it accessible

1. Create a repository with the above form
2. Configure the repository by adding at least a ssh public key

####  Access a repository

Repository URL: `ssh://borgserver@<IP address or URL>/~/<repository>` 

Example: `ssh://borgserver@192.168.0.101/~/backup`

Note: Direct access isn't possible. Only Borg compatible programs can.

#### Removing access to a repository

Simply empty out the corresponding repository public key field and save. Data will be kept.

#### Delete a repository

Warning: This action will erase repository's data!

Repositories listed here corresponds to current Borg installation managed repositories (i.e. a configuration is present in this app settings for this repository) and previously existing repositories that are not managed by the current Borg installation (i.e. a folder exist but is not listed in this app settings).

#### Manage pre-installation existing repositories

This scenario can happen if for example you previously installed this app, then removed it and finally reinstalled it. Indeed, as "Uninstall" states, no repository is deleted on this app uninstallation.

To manage again those repositories, simply "create" new repositories with the same names. Nothing will be erased and you will see them appears in the configuration tab.

#### Common Usage

##### Backing up other YunoHost machine(s)
If you plan to use Borgserver to backup another YunoHost machine, the client app (`borg_ynh`) must be installed on the other machine. After the installation of the 'client' app (`borg_ynh`), your friend will be provided with the info, in particular an SSH public key, to be used for it's repository configuration.

##### Backing up other _non-YunoHost_ machine(s)
It's also possible to install `borgserver` to provide backup storage to a friend's computer that isn't running YunoHost and its `borg_ynh` app. Your friend will need to generate an SSH key and give it to you.
1. On your friend's computer generate an SSH key (example: `ssh-keygen -f <name of the key>`)
2. In the configuration of the repository that you created for him, copy `<name of the key>.pub` file content into the public key field
3. On your friend's computer, initialize a new repository and specify the URL as in "Access a repository"
4. On your friend's computer, schedule or launch a backup

#### Configuration

SSH public keys won't display with their name in admin panel after being set. Their names are still present in "authorized_keys" file.

Note that some setting's values set on the server will prevail over client ones:
- quota ["has priority over the repository’s own quota setting"](https://borgbackup.readthedocs.io/en/stable/usage/serve.html). More informations [here](https://borgbackup.readthedocs.io/en/stable/internals/data-structures.html#storage-quotas).
<!--
TODO: uncomment when "--append-only" option suppport is added
- append-only ["will override the repository config"](https://borgbackup.readthedocs.io/en/stable/deployment/hosting-repositories.html)
-->

#### Alert notifications

You can use this feature as a safety net, it notifies one or more people of your choice that a planned backup did not happen. Notifications are sent at 9 (9 am) and 20 (8 pm) each day.

When a value is set, a cron will check if any file's data in the repository was last modified less than 24 hours ago multiplied by the value you set. If not, it sends an alert notification. So for example, if you set the value 2 (as in 2 days), you will receive alert notifications if no file was modified in the repository in the last 48 hours (2 days multiplied by 24 hours). Note that because the cron is launched at specific hours, it is the cron launch hour that will be used as the reference. So for example if we are Monday, as the cron runs first at 9, notifications will be sent if not modification happened since Saturday at 9. Of course, if your backup frequency is 1 per week, don't set a value lower than 7 (as there is 7 days in a week) or else you will receive notifications even though this is a normal behavior.


#### Uninstallation

When uninstalling, repositories data is kept. It is your responsibility to permanently erase what's needed to.

#### HELP!

Don't panic. No data is erased unless you explicitly deleted the repository through the form above. If you did, you can panic.
Set up storage spaces to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed either to work in combination with [borg 'client' app](https://apps.yunohost.org/app/borg) installed on different machines or to provide backup storage to other (non-YunoHost) computers that are running a Borg client (ex: Borg, Pika Backup, Vorta).

Note that this app only configure storage spaces compatible and restricted only for Borg repositories. It does not initialize repositories (i.e. create the various Borg files) from Borg's point of view. This is the job of the Borg clients.

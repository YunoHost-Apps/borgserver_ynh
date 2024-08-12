<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Borg Server pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/borgserver.svg)](https://ci-apps.yunohost.org/ci/apps/borgserver/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![Installer Borg Server avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Borg Server rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Setup a storage space to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed to work in combination with the [borg 'client' app](https://apps.yunohost.org/app/borg) installed on a diffent machine.


**Version incluse :** 1.2.8~ynh1
## Documentations et ressources

- Site officiel de l’app : <https://www.borgbackup.org/>
- Documentation officielle de l’admin : <https://borgbackup.readthedocs.io/en/stable/>
- Dépôt de code officiel de l’app : <https://github.com/borgbackup/borg>
- YunoHost Store : <https://apps.yunohost.org/app/borgserver>
- Signaler un bug : <https://github.com/YunoHost-Apps/borgserver_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
ou
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>

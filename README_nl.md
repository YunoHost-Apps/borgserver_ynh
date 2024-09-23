<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# Borg Server voor Yunohost

[![Integratieniveau](https://dash.yunohost.org/integration/borgserver.svg)](https://ci-apps.yunohost.org/ci/apps/borgserver/) ![Mate van functioneren](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![Onderhoudsstatus](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![Borg Server met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je Borg Server snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

Setup a storage space to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed to work in combination with the [borg 'client' app](https://apps.yunohost.org/app/borg) installed on a diffent machine.


**Geleverde versie:** 1.4.0~ynh1
## Documentatie en bronnen

- Officiele website van de app: <https://www.borgbackup.org/>
- Officiele beheerdersdocumentatie: <https://borgbackup.readthedocs.io/en/stable/>
- Upstream app codedepot: <https://github.com/borgbackup/borg>
- YunoHost-store: <https://apps.yunohost.org/app/borgserver>
- Meld een bug: <https://github.com/YunoHost-Apps/borgserver_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
of
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>

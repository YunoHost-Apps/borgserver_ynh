<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Borg Server YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/borgserver.svg)](https://ci-apps.yunohost.org/ci/apps/borgserver/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![Instalatu Borg Server YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Borg Server YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Setup a storage space to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed to work in combination with the [borg 'client' app](https://apps.yunohost.org/app/borg) installed on a diffent machine.


**Paketatutako bertsioa:** 1.2.8~ynh2
## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://www.borgbackup.org/>
- Administratzaileen dokumentazio ofiziala: <https://borgbackup.readthedocs.io/en/stable/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/borgbackup/borg>
- YunoHost Denda: <https://apps.yunohost.org/app/borgserver>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/borgserver_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
edo
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>

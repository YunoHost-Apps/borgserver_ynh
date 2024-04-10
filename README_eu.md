<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Borg Server YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/borgserver.svg)](https://dash.yunohost.org/appci/app/borgserver) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![Instalatu Borg Server YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Borg Server YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Offer backup storage to a friend.

The main goal of Borg is to provide an efficient and secure way to backup data. The data deduplication technique used makes Borg suitable for daily backups since only changes are stored. The authenticated encryption technique makes it suitable for backups to not fully trusted targets.


**Paketatutako bertsioa:** 1.1.16~ynh9
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

<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Borg Server untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/borgserver.svg)](https://ci-apps.yunohost.org/ci/apps/borgserver/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![Pasang Borg Server dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Borg Server secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Setup a storage space to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed to work in combination with the [borg 'client' app](https://apps.yunohost.org/app/borg) installed on a diffent machine.


**Versi terkirim:** 1.2.8~ynh1
## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://www.borgbackup.org/>
- Dokumentasi admin resmi: <https://borgbackup.readthedocs.io/en/stable/>
- Depot kode aplikasi hulu: <https://github.com/borgbackup/borg>
- Gudang YunoHost: <https://apps.yunohost.org/app/borgserver>
- Laporkan bug: <https://github.com/YunoHost-Apps/borgserver_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
atau
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>

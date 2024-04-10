<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Borg Server para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/borgserver.svg)](https://dash.yunohost.org/appci/app/borgserver) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![Instalar Borg Server con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Borg Server de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

Offer backup storage to a friend.

The main goal of Borg is to provide an efficient and secure way to backup data. The data deduplication technique used makes Borg suitable for daily backups since only changes are stored. The authenticated encryption technique makes it suitable for backups to not fully trusted targets.


**Versión proporcionada:** 1.1.16~ynh9
## Documentación e recursos

- Web oficial da app: <https://www.borgbackup.org/>
- Documentación oficial para admin: <https://borgbackup.readthedocs.io/en/stable/>
- Repositorio de orixe do código: <https://github.com/borgbackup/borg>
- Tenda YunoHost: <https://apps.yunohost.org/app/borgserver>
- Informar dun problema: <https://github.com/YunoHost-Apps/borgserver_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
ou
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>

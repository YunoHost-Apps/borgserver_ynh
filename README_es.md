<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Borg Server para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/borgserver.svg)](https://ci-apps.yunohost.org/ci/apps/borgserver/) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![Instalar Borg Server con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarBorg Server rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

Setup a storage space to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed to work in combination with the [borg 'client' app](https://apps.yunohost.org/app/borg) installed on a diffent machine.


**Versión actual:** 1.2.8~ynh1
## Documentaciones y recursos

- Sitio web oficial: <https://www.borgbackup.org/>
- Documentación administrador oficial: <https://borgbackup.readthedocs.io/en/stable/>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/borgbackup/borg>
- Catálogo YunoHost: <https://apps.yunohost.org/app/borgserver>
- Reportar un error: <https://github.com/YunoHost-Apps/borgserver_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
o
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>

# Borg server for YunoHost

[![Integration level](https://dash.yunohost.org/integration/borgserver.svg)](https://dash.yunohost.org/appci/app/borgserver) ![](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)  
[![Install Borg Server with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

> *This package allows you to install Borg Server quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Offer backup storage to a friend.
The main goal of Borg is to provide an efficient and secure way to backup data. The data deduplication technique used makes Borg suitable for daily backups since only changes are stored. The authenticated encryption technique makes it suitable for backups to not fully trusted targets.

**Shipped version:** 1.1.14

## Documentation

 * Official documentation: https://borgbackup.readthedocs.io/en/stable/
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## YunoHost specific features

#### Multi-user support

Are LDAP and HTTP auth supported?
Can the app be used by multiple users?

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/borgserver%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/borgserver/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/REPLACEBYYOURAPP%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/borgserver/)

## Limitations

* Any known limitations.

## Additional information

* Other info you would like to add about this app.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/borgserver_ynh/issues
 * App website: https://www.borgbackup.org/
 * Upstream app repository: https://github.com/borgbackup/borg
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
or
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

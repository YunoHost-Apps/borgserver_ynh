<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Borg Server для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/borgserver.svg)](https://ci-apps.yunohost.org/ci/apps/borgserver/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![Установите Borg Server с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Borg Server быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

Setup a storage space to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed to work in combination with the [borg 'client' app](https://apps.yunohost.org/app/borg) installed on a diffent machine.


**Поставляемая версия:** 1.2.8~ynh4
## Документация и ресурсы

- Официальный веб-сайт приложения: <https://www.borgbackup.org/>
- Официальная документация администратора: <https://borgbackup.readthedocs.io/en/stable/>
- Репозиторий кода главной ветки приложения: <https://github.com/borgbackup/borg>
- Магазин YunoHost: <https://apps.yunohost.org/app/borgserver>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/borgserver_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
или
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>

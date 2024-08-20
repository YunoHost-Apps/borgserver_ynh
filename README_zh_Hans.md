<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Borg Server

[![集成程度](https://dash.yunohost.org/integration/borgserver.svg)](https://ci-apps.yunohost.org/ci/apps/borgserver/) ![工作状态](https://ci-apps.yunohost.org/ci/badges/borgserver.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/borgserver.maintain.svg)

[![使用 YunoHost 安装 Borg Server](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=borgserver)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Borg Server。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Setup a storage space to be used for backup using Borg

This app is the "server" part, meant to be installed on the machine providing the backup storage. It is designed to work in combination with the [borg 'client' app](https://apps.yunohost.org/app/borg) installed on a diffent machine.


**分发版本：** 1.4.0~ynh1
## 文档与资源

- 官方应用网站： <https://www.borgbackup.org/>
- 官方管理文档： <https://borgbackup.readthedocs.io/en/stable/>
- 上游应用代码库： <https://github.com/borgbackup/borg>
- YunoHost 商店： <https://apps.yunohost.org/app/borgserver>
- 报告 bug： <https://github.com/YunoHost-Apps/borgserver_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
或
sudo yunohost app upgrade borgserver -u https://github.com/YunoHost-Apps/borgserver_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>

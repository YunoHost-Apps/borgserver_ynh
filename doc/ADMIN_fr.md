### Sommaire
- Créer un dépôt et le rendre accessible
- Accéder au dépôt
- Retirer l'accès à un dépôt
- Supprimer un dépôt
- Gérer les dépôts existants avant l'installation
- Usage courant
    - Sauvegarder d'autre(s) machine(s) YunoHost
    - Sauvegarder une machine _non-YunoHost_
- Configuration
- Notifications d'alerte
- Désinstallation
- À L'AIDE !

#### Créer un dépôt et le rendre accessible

1. Créer un dépôt avec le fomulaire ci-dessus
2. Configurer le dépôt en lui ajoutant, au minimum, une clé publique SSH

#### Accéder au dépôt

URL du dépôt : `ssh://borgserver@<adresse IP ou URL>/~/<nom du dépôt>` 

Exemple : `ssh://borgserver@192.168.0.101/~/sauvegarde`

Note : Vous ne pourrez pas vous y connecter directement. Seulement les programmes compatibles avec Borg le peuvent.

#### Retirer l'accès à un dépôt

Vider simplement le champ contenant la clé publique du dépôt en question. N'oubliez pas de sauvegarder. Les données présentes dans le dépôt seront conservées.

#### Supprimer un dépôt

Attention : cette action entrainera la suppression des données du dépôt !

Les dépôts listés ici correspondent à ceux géré par l'installation courante de borgserver (c.-à-d. la configuration de ce dépôt est présente dans les paramètres de cette application) et à ceux précédemment présent mais non géré par l'installation courante de borgserver (c.-à-d. un répertoire existe mais sa configuration n'est pas présente dans les paramètres de cette application).

#### Gérer les dépôts existants avant l'installation

Ce scénario peut être rencontré lorsque, par exemple, vous avez précédemment installé puis désinstaller l'application pour finalement la réinstaller. En effet, comme décrit dans "Désinstallation", aucun dépot n'est réellement supprimé lorsque cette application est désinstallée.

Pour gérer ces dépôts, il vous suffit de "créer" de nouveaux dépôts portant les mêmes noms. Rien ne sera effacé et ils apparaitront dans l'onglet de configuration.

#### Usage courant

##### Sauvegarder d'autre(s) machine(s) YunoHost
Si vous souhaitez utiliser Borg Server pour sauvegarder une autre machine YunoHost, l'application cliente (`borg_ynh`) devra être installée sur l'autre machine. Après son installation, votre ami sera en mesure de vous fournir les informations nécessaires pour configurer un dépôt, notamment une clé publique SSH.

##### Sauvegarder une machine _non-YunoHost_
Il est possible d'installer Borg Server pour stocker les donner d'ordinateur ne fonctionnant pas sous YunoHost et ne pouvant donc utiliser l'application `borg_ynh`. Pour ce faire, votre ami devra générer un couple de clé SSH et vous transmettre la clé publique.
1. Sur son ordinateur, votre ami génère un couple de clé SSH (exemple : `ssh-keygen -f <nom de la clé>`)
2. Dans le dépôt que vous aurez créé à cet effet, coller le contenu du fichier `<nom de la clé>.pub` dans le champ "clé publique".
3. Sur son ordinateur, votre ami initialise un nouveau dépôt en spécifiant l'URL comme indiqué dans "Accéder au dépôt"
4. Sur son ordinateur, votre ami planifie ou lance une sauvegarde

#### Configuration

Les clés publiques SSH n'affichent pas leur nom dans l'onglet de configuration après avoir été configurée. Leurs noms sont toujours présents dans le fichier authorized_keys.

Notez que certains paramètres configurés sur le serveur prévaudront toujours sur ceux des clients :
- quota : ["prioritaire sur le paramètre quota du dépôt lui-même" (en anglais)](https://borgbackup.readthedocs.io/en/stable/usage/serve.html). Plus d'informations [ici (en anglais)](https://borgbackup.readthedocs.io/en/stable/internals/data-structures.html#storage-quotas).
<!--
TODO: uncomment when "--append-only" option suppport is added
- append-only ["réécrira la configuration du dépôt" (en anglais)](https://borgbackup.readthedocs.io/en/stable/deployment/hosting-repositories.html)
-->

#### Notifications d'alerte

Cette fonctionnalité peut servir de filet de sécurité, elle notifie quelqu'un qu'une sauvegarde planifiée n'a pas eu lieue. Ces notifications sont émises à 9h et 20h chaque jour.

Quand une valeur est configurée, une tâche planifiée (cron) va vérifier si des données ont été modifiées dans le dépôt il y a moins de 24 heures multiplié par votre valeur. Donc par exemple, si vous configurez la valeur 2 (donc 2 jours), vous recevrez une notification si aucun fichier n'a été modifié dans le dépôt ces 48 dernières heures (2 jours multiplié par 24 heures). Notez que, le cron étant déclenché à des horaires spécifiques, c'est l'heure de déclenchement du cron qui servira de référence. Donc par exemple si nous sommes un lundi, puisque le cron se déclenche une première fois à 9h, des notifications seront envoyées si aucune modification n'a eu lieu depuis samedi 9h. Bien sûr, si votre fréquence de sauvegarde est hebdomadaire, ne configurez pas une valeur moindre que 7 (puisque 7 jours dans une semaine) ou vous recevrez des notifications alors que cette situation est normale.

#### Désinstallation

Lors de la désinstallation, les données des dépôts sont conservées. Il est de votre responsabilité d'effacer de façon permanente ce qui doit l'être. 

#### À L'AIDE !

Pas de panique. Aucune donnée n'est éffacée sauf si vous le faite explicitement au travers du formulaire ci-dessus. Si c'est que vous avez fait, vous pouvez paniquer.
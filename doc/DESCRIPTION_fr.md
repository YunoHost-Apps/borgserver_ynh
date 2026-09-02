Configurer des espaces de stockage pour des sauvegardes Borg

Cette application est la partie "serveur" qui est installée sur la machine donnant de l'espace de stockage. Elle fonctionne soit en combinaison avec l'[application 'client' Borg](https://apps.yunohost.org/app/borg) installée sur d'autres machines YunoHost, soit avec des ordinateurs ayant un client Borg d'installés (ex: Borg, Pika Backup, Vorta).

Notez que cette application ne fait que configurer des espaces de stockages compatibles et restreints pour l'usage de Borg. Elle n'initialise pas les dépôts (c.-à-d. créer les divers fichiers Borg nécessaires à son fonctionnement). Ce sont les clients Borg qui sont chargés de le faire.

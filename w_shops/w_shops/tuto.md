    -- G_Corporation -- wiizz -- 
  -- https://github.com/wiizzdev --
 -- https://discord.gg/VpYP58ZjmD --

[Rajouter un item dans le menu ?]

=> aller dans le client.lua et copier le contenu de la ligne 41 à 45 puis coller le a la ligne 56 après avoir fait la touche ENTER.
=> remplacer le "wdev:achatPain par "wdev:achatMonitem".
=> aller dans le server.lua et copier le contenu de la ligne 90 à 103 puis faites deux fois la touche ENTER et coller le a la suite.
=> remplacer les deux "wdev:achatChocolat" par "wdev:achatMonitem".
=> remplacer le "joueur.addInventoryItem('chocolate', 1)" par "joueur.addInventoryItem('nom_de_votre_item_dans_la_database', 1)".

En jeu, appuyez sur F8 puis tapez "restart w_shops" et appuyez sur ENTER. Ceci rechargera le script et permettra d'afficher vos modifications.

[Faire en sorte que certaines supérette ne soit plus braquable ?]

=> aller dans le client.lua du script w_shops et collez le texte du pastebin (https://pastebin.com/LE1yNrfE) tout en bas du script.
    mot de passe pastebin : wdev
=> supprimez les coordonées choisis des peds dans le config.lua du script loffe_robbery.

[Modifier les peds ?]

=> les peds sont mis dans le script loffe_robbery fournis quand vous avez téléchargé sur github l'archive.
=> allez dans le config.lua et modifiez les coordonées x y z des peds. n'oubliez pas de mettre le hash du ped qui correspond a l'angle d'orientation.

Le script loffe_robbery est juste un releak. Je ne suis en aucun cas responsable de la qualité ou de la consommation du script. Vous pouvez très bien reprendre les coordonées des peds dans le script pour les utiliser sur votre script de braquage !

N'hésitez pas a star le projet sur github !

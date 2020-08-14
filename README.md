# Projet : Google Spreadsheet
Ce projet consiste à créer un programme d'enregistre les email des maire du Val d'Oise dans fichier JSON, CSV et de sheet avec les fonction ruby.

# I-Contenue du programme:


JSON_scrapper

        ├── .gitignore

          ├── README.md

          ├── Gemfile

          ├── app.rb

          ├── client_secret.json

          ├── Gemfile.lock

          ├── app.rb

          ├── db

          │       └── emails.JSON
                    ├── emails.csv

           └── lib    

                     └── scrapper.rb
                     
# II- Fonctionalité de programme

Gemfile: Un Gemfile est tout simplement la liste des gems utilisés par mon fichier et les gem est recuperer par le commande $ bundle install dans le terminal

Le dossier db contient les fichier emails.JSON et emails.csv qui sont la stockage des donnes

Et le dossier lib contient le fichier scrapper.rb qui le coeur de programme. Il sert de recuperer l'URl de Val d'oise et trie les ville et l'email des maires puis il y a des fonctions d'enregistre les donnes dans db et dans le sheets google

Le fichier app.rb est la fonction de l'excution de programme.

# Lien de github 

https://github.com/Annyzo/JSON_scrapper

Finallement Cette projet est l'exercice pour comprendre la fonctionalité de l'API



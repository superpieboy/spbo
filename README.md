# spbo
--------------------------------------------------------------------------------------------------------------
FR

Ce projet est une mise à jour et s’appuie sur le projet « Gameboy Raspberry Zero Batterymonitoring with MCP3008 », qui a été créé à l’origine par joachimvenaas , donc tous les remerciements vont à Joachim :)
https://github.com/joachimvenaas/gbzbatterymonitor

Ce projet a été créé pour simplifier l’installation de gbzbatterymonitor.
Vous devez avoir fabriqué au préalable le module de kit de batterie.
Description détaillés pour le montage du kit indicateur de batterie sous Retropie : https://www.elektronicaone.fr/batterie-retropie-p1/

Détails de l'installation : 

1)	Simplification de l’installation de gbzbatterymonitor en réunissant toutes les ressources en un seul répertoire. 

•	Une seule ligne de commande  pour l’installation de gbzbatterymonitor.
•	Plus besoin de compiler en ligne de commande, et de configurer des fichiers dans le Raspberry PI, l’installation fait tout.
•	A la fin de l’installation, le Raspberry PI  redémarre automatiquement pour la prise en charge de l’indicateur de la batterie.

2)	Modifications apportées : 

•	Nouvelles icônes de la batterie. 
•	Ajout de nouvelles vidéos « lowbattalert.mp4 » et « lowbattshutdown.mp4 », désactivées par défaut.
Vous pouvez les activer dans le fichier « spbo\Install\gbzbattery\config.py »
en modifiant la ligne à « CLIPS = 1 ».
C’est utile quand vous arrivez en fin de batterie, des vidéos vous alertent :) !

3)	Le fichier config.py est configuré par défaut avec les valeurs des  résistances à 2 kOhm et 5.6kOhm pour le diviseur de tension, pour ne pas dépasser les 3.3v. 

4)	Joachimvenaas met à jour fréquement le répertoire « gbzbattery » depuis https://github.com/joachimvenaas/gbzbatterymonitor
Vous pouvez le récupérer et le remplacer dans « spbo\Install\ »


--------------------------------------------------------------------------------------------------------------

ENG

This project is only an update and builds from the “Gameboy Raspberry Zero Batterymonitoring with MCP3008" project , which was originally created by Joachimvenaas, so all the thanks go to Joachim :)
https://github.com/joachimvenaas/gbzbatterymonitor

Here, this project was created to simplify the installation of gbzbatterymonitor.
You must have previously manufactured the battery kit module.
Detailed descriptions for mounting the battery indicator kit for Retropie: https://www.elektronicaone.fr/batterie-retropie-p1/

Details:
1) Installation optimized for gbzbatterymonitor by bringing all the resources into a single directory.
• Only One command line to install gbzbatterymonitor.
• No need to compile on with the command line, or configure files in the Raspberry PI, the installation does all.
• At the end of the installation, the Raspberry PI will restart automatically to support the battery indicator.

2) New adds : 
• New battery icons.
• "New “lowbattalert.mp4" and "lowbattshutdown.mp4" videos, which are disabled by default.
You can enable them in the file "spbo \ Install \ gbzbattery \ config.py"
by changing the line to "CLIPS = 1".
It's useful when you arrive at the end of the battery, videos alert you =:)

3) The “config.py” file is configured by default with the resistance values at 2 kOhm and 5.6k Ohm for the voltage divider, so as not to exceed 3.3v.

4) Joachimvenaas frequently updates the "gbzbattery" directory from https://github.com/joachimvenaas/gbzbatterymonitor
You can recover it and replace it in "spbo \ Install \"


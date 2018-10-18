

#!/bin/bash
#variable path
clear



if [ -f "$repinstall/.SPBOCONFOK" ;then



echo " The console is already configured !";
exit 0
else
echo
echo
echo " Launching the first console configuration !"
sleep 2
echo " Installing the battery management !"
sleep 2	

fi


#--------------------------------------battery


sudo apt-get install libpng12-dev 
sudo cp $repinstall/raspidmx/lib/libraspidmx.so.1 /lib 
echo copie lib ok
sudo chmod 755 $repinstall/raspidmx/pngview/pngview
cd $repinstall/raspidmx
#cd /home/pi/raspidmx
sudo make
clear
 
sudo sed -i -e '$i \bash /home/pi/spbo/Install/autostart/autostart.sh &\n' /etc/rc.local


echo " Registering battery management at startup "
sleep 1
echo "ok"
sleep 2

#--------------------------------------rebours


# fonction rebours
# Affichage d'un compte à rebours
# Usage : rebours [nombre de secondes]
# Notes : le "echo -e" permet l'utilisation des caractères spéciaux
decompte() {
    i=$1
    echo " "
    while [[ $i -ge 0 ]]
      do
        echo -e "\033[31m\r "$i" \c\033[0m"
sleep 1        
        i=$(expr $i - 1)
    done
    echo
   echo -e "\033[32mRebooting in progress...\033[0m"
sleep 1
}


# appel d'un compte à rebours de 5 secondes
decompte 4 
sleep 1
touch $repinstall/.SPBOCONFOK
sudo reboot now
#exit 0

#!/bin/bash

v="0.66.6c"

#Beautiful, simply astounding, turn of the millenium, futuristic, perfect error handling :D
set -e

#Update all of the age-old spaghetti code cuz I'm no Italian XD
#PS It's a JOKE OKAY GET THE MAFIA AWAY FROM MY DOORSTEP D:
if [[ -z "$#" || "$1" = "--help" || "$1" = "-h" ]];
then
        echo $0":"
	echo "Version: "$v
	echo " "
        echo "Script for removing a package and clearing"
        echo "cache with one easy command."
        echo " "
        echo "Usage:"
        echo $0" [-h] [--help] [-n] [--no-package] [-p <packages>]"

#More un-spaghettification
elif [[ $1 = "--no-package" || "$1" = "-n" ]];
then
	echo "--no-package flag active!"
	echo $0":" "will only clear apt package cache and execute apt autoremove!"
	sudo apt autoremove
	sudo apt autoclean
	sudo apt clean
	sudo rm -rf /var/cache/apt/*
	echo $0":" "Finished!"
 
# Because we might as well multitask :)
elif [[ "$1" = "-p" ]];
then
if [[ -z "$2" ]];
then
	echo "E: -p: No packages were specified!"
	exit;
else
        echo "Removing" ${@:2}"..."
        sudo apt -y purge ${@:2}
        sudo apt -y autoremove
        sudo apt autoclean
        sudo apt clean
        sudo rm -rf /var/cache/apt/*
        echo $0": Removal of "${@:2}" completed and apt cache cleared!"
fi
fi

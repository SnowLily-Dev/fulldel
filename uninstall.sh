#!/bin/bash

# Ooh, funky error auto-halting :3
set -e

# Check root access
if [ "$(id -u)" -ne 0 ]; then
	echo "This script must be run as root"
	exit 1
fi

if [ ! -f /usr/bin/fulldel ];
then
	echo "You haven't even installed it yet or you're already trying to remove it?! >:("
	echo "Basically, fulldel wasn't found at /usr/bin, at least install it before ya mock me... :("
	exit 1
fi

# Yay! You have root! Now then, let's disappoint me with this removal of precious software!
echo Removing fulldel from /usr/bin...
echo "Side note: why do you hate me? :("
rm /usr/bin/fulldel
echo " "

# More goofy dialogue :3
echo "Congrats, it's all gone..."
echo "..."
echo "...I hope you're glad..."
echo "..."
echo "...well if it failed to remove just do it yourself. The command is:"
echo "echo I'm a goof"
echo "..."
echo "..."
echo "Okay fine, it's:"
echo "sudo rm /usr/bin/fulldel"
exit;

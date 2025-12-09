#!/bin/sh

# Ooh, funky error auto-halting :3
set -e

# Check root access
if [ "$(id -u)" -ne 0 ]; then
	echo "This script must be run as root"
	exit 1
fi

# Yay! You have root! Let's send this motherf---er to /usr/bin!
echo Installing fulldel to /usr/bin...
echo "Side note: this is totally not a super basic cp or smth nah"
cp $PWD/fulldel.sh /usr/bin/fulldel

# More goofy dialogue :3
echo "Setting exec permissions for your executive pleasure :3..."
chmod +x /usr/bin/fulldel

echo "It would seem fulldel is installed..."
echo "..."
echo "...I hope :3"
echo "..."
echo "...well if it is indeed installed ya can just type fulldel :3"
exit;

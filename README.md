# fulldel
UPDATE 09/12/2025: Bored outta my mind, decided to look back at this and clean up a bit with fresher knowledge lol

fulldel(A.K.A. Full Delete) is a script made for easily removing packages with the apt package manager and directly
removing the apt cache and unnecessary dependencies of recently removed packages.
Syntax for removing a package, it's dependencies and the apt cache:

Code:
fulldel -p (package)

Syntax for removing only the dependencies of recently removed apps/unused packages and clearing apt cache without
removing packages:

Code:
fulldel -n
OR
fulldel --no-package

Installation:

NOTE: Do NOT extract fulldel to /usr/bin or any other system folder or it will break your system!
Make sure to keep fulldel.tar.xz somewhere in your home folder and use the "install script" within
the archive to install fulldel!

Code:

mkdir ~/Documents/fulldel

cp /path/to/fulldel.tar.xz ~/Documents/fulldel

cd ~/Documents/fulldel

tar -xf ./fulldel.tar.xz

chmod 775 ./install

./install

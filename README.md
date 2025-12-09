# fulldel
UPDATE 09/12/2025: Bored outta my mind, decided to look back at this and clean up a bit with fresher knowledge lol
20:32 I'm a freaking idiot, check CHANGELOG.md lol

fulldel(A.K.A. Full Delete) is a script made for easily removing packages with the apt package manager and directly
removing the apt cache and unnecessary dependencies of recently removed packages.
Syntax for removing a package, it's dependencies and the apt cache:

Code:
fulldel -p (package)

Syntax for removing only the dependencies of recently removed apps/unused packages and clearing apt cache without
removing packages:

Code:
`fulldel -n`
OR
`fulldel --no-package`

Code:

`git clone https://github.com/SnowLily-Dev/fulldel`

`cd fulldel`

`sudo install.sh`

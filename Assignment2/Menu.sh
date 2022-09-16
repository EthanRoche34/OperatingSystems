##Setting up changing scripts 
#!/bin/bash
Register="./Register.sh"
Login="./Login.sh"

clear ##Clearing screen

##Setting Up Colours
RED='\e[31m'
CYAN='\e[36m'
NC='\033[0m' # No Color
BLINK='\e[5m' #Blink
INV='\e[7m' #Inverted

echo -e "${INV}Welcome, please choose from one of the following options" "\n\n1. Register your details" "\n\n2. Login to your account" "\n\n3. Exit${NC}"
echo -e "\n${RED}${BLINK}Please choose an option:${NC}"
read input ##Read user input

if [ $input = 1 ]  ##If 1 entered then go to register script
then
$Register
fi

if [ $input = 2 ] ##If 2 enetered then go to login script
then
$Login
fi

if [ $input = 3 ] ##If 3 entered then say goodbye and wait for user to press enter 
then
clear
read -p "$(echo -e ${BLINK}${RED}'Goodbye!''\nPress Enter to Exit...'${NC})" 
clear
exit
fi



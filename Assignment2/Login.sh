##Setting up changing scripts
#!/bin/bash
Menu="./Menu.sh"
Register="./Register.sh"
WhileVerification="./LoginWhileVerification.sh"
LoginVerification="./LoginVerification.sh"

##Setting up colours and underline
UNDERBOLD='\e[1;4m' #Bold and Underlined
CYAN='\e[36m'
NC='\e[0m' #No colour
RED='\e[31m'
LRED='\e[91m' #Light Red
MAG='\e[35m' #Magenta
GRE='\e[32m' #Green
BLINK='\e[5m' #Blink

attempts=3 ##Setting Up Attempts
while [ $attempts -gt 0 ]
do
clear
echo -e "${UNDERBOLD}${CYAN}Login to your account${NC}\n" ##Prompt for username and password
read -p "$(echo -e Enter your ${MAG}username: ${NC})" Username
read -p "$(echo -e Enter your ${MAG}password: ${NC})" Password
echo
read -p "$(echo -e ${CYAN}Press Enter to Login...${NC})"

##Call Verification Script for While Loop
#!/bin/bash
. $WhileVerification ##Dot before needed to pass in Username and Password Variables into the Verification Scripts
done

##Call Verfication Script after While loop
#!/bin/bash
. $LoginVerification

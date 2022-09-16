#Setting up changing script
#!/bin/bash
Menu="./Menu.sh"
RegVerification="./RegVerification.sh"

#Setting up colours
UNDERBOLD='\e[1;4m' #Bold and Underlined
CYAN='\e[36m'
NC='\e[0m' #No colour
RED='\e[31m'
LRED='\e[91m' #Light Red

clear

echo -e "${UNDERBOLD}${CYAN}Register${NC}\n"
read -p "$(echo -e Enter your ${RED}name: ${NC})" Name ##Using echo to display full name in colour as read doesn't process special escapes with -p
read -p "$(echo -e Enter your ${RED}date of birth: ${NC})" DOB  ##Same as above and same for below
read -p "$(echo -e Enter a ${RED}username: ${NC})" Username
read -p "$(echo -e Enter a ${RED}password: ${NC})" Password
read -p "$(echo -e Enter your ${RED}email address: ${NC})" EmailAddress

. $RegVerification  ##Passes variables into RegVerification.sh which verifies different things before making the user

echo -e "~~~~~~~~~~~~~~~~~~~~\n"
read -p "$(echo -e ${CYAN}Press enter to return to menu${NC})"

$Menu  ##Goes back to the menu

##Verification inside While Loop
if [ ! -f "./Register.txt" ] ##If there is no register.txt file then notify user
 then
 echo -e "\n${RED}There is no register file. Try registering an account${NC}"
 attempts=-99  ##Used for LoginVerification file

elif [ ! -s "./Register.txt"  ] ##If the register is empty then notify user
 then
 echo -e "\n${RED}The register is empty${NC}"
 attempts=-99

else ##Otherwise try these
if [[ $(cut -d ":" -f 3,4 ./Register.txt |
 grep -F -w "<$Username>:<$Password>") == "<$Username>:<$Password>" ]] ##Cutting all delimiters 3 and 4 (username and password) then searching for a line that matches entered username and password
 then
 echo
 read -p "$(echo -e ${GRE}Login Successful${NC})"
 attempts=-1 ##Compares entered username and password to usernames and their passwords in the register and if theres a match notify user
else  ##If username and/or password don't match any in register lower attempts and tell the user num of attempts left
 echo -e "${RED}Username or Password Incorrect${NC}"
 attempts=$(($attempts - 1))
 echo -e "\nAttempts Left: $attempts\n"
 read -p "$(echo -e ${CYAN}Press Enter to continue)" 
fi

fi

#If statements for Register.sh

#!/bin/bash
Register="./Register.sh"

if [[ -z $Name || -z $DOB || -z $Username || -z $Password || -z $EmailAddress ]] ##If any field is blank notify then return to registration
 then
 read -p "$(echo -e ${RED}Cannot leave any fields blank. Please try again${NC})"
 $Register

elif [[ $Name == *[':']* || $DOB == *[':']* || $Username == *[':']*  || $Password == *[':']* || $EmailAddress == *[':']* ]] ##If any field has :, notify then return to registration
 then
 read -p "$(echo -e ${RED}Fields cannot contain the character ':')"
 $Register  ##Returns to register

else
if [ ! -f "./Register.txt" ];  ##If there is no register file
 then
 echo -e "\n${RED}Register does not exist, creating it now...${NC}\n"
 touch Register.txt
fi

if [ $(cut -d ":" -f 3 ./Register.txt | 
 grep -F -w "$Username" |
 wc -l) = 1 ]  ##Cuts field 3 from register using : as delimiter and checks if entered username is already in the register
then
echo -e "\n${LRED}Registration Failed. The username entered is taken.${NC}\n"

else  ##If username isn't taken then add user to register and sort 
echo "<$Name>:<$DOB>:<$Username>:<$Password>:<$EmailAddress>" >>Register.txt
sort -o Register.txt Register.txt
echo -e "${CYAN}Succesfully Registered${NC}"
fi
fi

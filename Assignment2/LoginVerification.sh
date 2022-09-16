if [ $attempts = -1 ] ##If Login Successful, welcome user and give the option to return or exit
 then
 clear
 echo -e "${GRE}${UNDERBOLD}Welcome $Username!${NC}" ##Gets username entered and welcomes that user
 read -p "$(echo -e ${MAG}'\nWould you like to:''\n1.Return to the menu''\n2.Exit?\n\n'${NC})" LoginChoice
 if [ $LoginChoice = 1 ] ##If choice is 1 then go back to menu
 then
 $Menu
 elif [ $LoginChoice = 2 ] ##If choice is 2 then exit
 then
 clear
 read -p "$(echo -e ${BLINK}${RED}Goodbye!${NC})"
 exit
 fi
elif [ $attempts = 0 ] ##If no attempts left then tell user and then exit
 then
 echo
 echo -e "${RED}Too many incorrect attempts!${NC}"
 echo
 read -p "$(echo -e ${RED}Press Enter to exit${NC})"

elif [ $attempts = -99 ] ##If there is no register or register is empty give user option to return to menu, register or exit
 then
 echo
 read -p "$(echo -e ${MAG}'\nWould you like to:''\n1.Return to the menu''\n2.Register''\n3.Exit\n\n'${NC})" choice
 if [ $choice = 1 ] ##Return to menu
 then
 $Menu
 elif [ $choice = 2 ] ##Go to register
 then
 $Register
 elif [ $choice = 3 ] ##Exit
 then
 clear
 read -p "$(echo -e ${BLINK}${RED}Goodbye!${NC})"
 exit
 else ##Otherwise notify of invalid input and exit
  clear
  echo -e "${RED}Invalid input detected, exiting the program now...${NC}"
 read
 fi
fi

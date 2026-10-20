#This will be used when we have multiple options to script

#Case 

#if option a is selected = do this
#if option b is selected = do this

#Ex:

#!/bin/bash

echo
echo Please chose one of the options below
echo
echo 'a = Display Date and Time'
echo 'b = List file and directories'
echo 'c = List users logged in'
echo 'd = Check System uptime'
echo

        read choices

        case $choices in

a) date;;
b) ls;;
c) who;;
d) uptime;;
*) echo Invalid choice - Bye.

esac

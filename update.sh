
#!/bin/bash

exit_status() {
    if [ $? -eq 0 ]
        then
                echo
                echo "-----------------------------------------"
                echo "*    Command Execting Was Successful    *"
                echo "-----------------------------------------"
                echo
        else
                echo
                echo "-------------------------------------------------------"
                echo "     [Error] Process Command Executing Has Failed!     "
                echo "-------------------------------------------------------"
                echo

        read -p "The last command has exited with an error. Exit script? (yes/no)" answer
                if [ "$answer" == "yes" ]
                then
                    exit 1
                fi 
    fi 
}

start() {
            echo
            echo "********************************************"
            echo "___--- Upgrading The Operating System.---___"
            echo "********************************************"
            echo
}

upgrade() {
            sudo apt update;
            exit_status

            sudo apt upgrade;
            exit_status
}

cleanUp() {
            sudo apt autoremove;
            exit_status
}

exitUpdate() {

            echo
            echo "*******************************************************"
            echo "-------------------------------------------------------"
            echo "-   The Operating System Update Has Been Completed.   -"
            echo "-------------------------------------------------------"
            echo "*******************************************************"
            echo
        exit
}

start
upgrade
cleanUp
exitUpdate

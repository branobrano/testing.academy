#!/bin/bash
HRAT=y 
while [ $HRAT = "y" ]; do
echo "Myslim si cislo od 1 do 20"
    SECRET=$(($RANDOM % 3))
    TIP=0
    POCET=3
    while [ $SECRET -ne $TIP ] && [ $POCET -gt 0 ]; do
        read -p "Zadaj tip: " TIP

    while [[ -z $TIP ]] || [[ ! $TIP =~ ^[0-9]+$ ]] || [[ $TIP -le 1 ]] || [[ $TIP -gt 20 ]]; do  
      echo "Zadaj cislo nic ine"
      read TIP
     done 
     
        echo "Zostava ti este $POCET pokusov"
        echo "Tvoj tip: $TIP"

            if [ $SECRET -gt $TIP ] ; then 
            echo "moje cislo je vacsei ako tvoj tip $TIP"
               else 
                    if [ $SECRET -lt $TIP ] ; then
                echo "moje cislo je mensie ako tvoj tip $TIP"
                else
                    if [ $SECRET -eq $TIP ] ; then 
                echo "si makac"
                fi
            fi 
        fi
        POCET=$((POCET-1)) 

         if [ $POCET -eq 0 ] ; then   
          echo "Game over vycerpal si vsetky pokusy cislo bolo"
        fi
        done 
    read -p "DO you want to play again y/n:  " HRAT
done  


       if [ $HRAT != "y" ] ; then 
       echo "DOVIDENIA"
       fi
 



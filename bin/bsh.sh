#!/bin/bash

HOUR=$(date +%H)



if [ $HOUR -gt 0 ] && [ $HOUR -lt 8 ]; then 
            echo "Dobre rano"
                else 
                    if [ $HOUR -gt 8 ] && [ $HOUR -lt 12 ] ; then
                echo "Dobry den"
                else
                if [ $HOUR -gt 12 ] && [ $HOUR -lt 0 ]; then 
            echo "Dobry vecer"
                fi
             fi
         fi 





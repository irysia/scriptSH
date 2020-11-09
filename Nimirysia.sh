#!/bin/bash

echo "##########NIM GAME##########"
game_running=true
items_available=20

function baton () {
    echo -n "$items_available item(s) :" 
    for i in `seq $items_available`     
    do
        echo -n "|"       
    done
    echo ""
}

while [ "$items_available" -gt 0 ]
do    
    baton
    echo "How many items do you want to take [between 1-3] ?"
    read nbitems    
    if [ "$nbitems" -lt 1 ] || [ "$nbitems" -gt 3 ]
    then 
        clear
        echo "FOLLOW THE RULES NO CHEATING 1 2 or 3, FOCUS please!"
    else 
        let "items_available = items_available - nbitems"
        baton
        let "IApick = 4 - nbitems"
        echo "l'IA prend $IApick"
        let "items_available = items_available - IApick"    
    fi
done
echo "game over you loose, stop trying..."
game_running=false
    






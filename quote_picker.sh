#!/bin/bash

PICKED=$((1 + $RANDOM % $(sed -n '$=' ~/.config/waybar-quotes/quotes.txt)))

TEXT=$(head -$PICKED ~/.config/waybar-quotes/quotes.txt | tail +$PICKED)

if [[ $TEXT == '-'* ]] ;
then
    echo $(echo $TEXT | sed 's/^.//') > ~/.config/waybar-quotes/picked_quote.txt
else
    bash $0
fi


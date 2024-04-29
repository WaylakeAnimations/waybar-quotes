#!/bin/bash

grep '[^[:space:]]' ~/.config/waybar-quotes/quotes.txt > ~/.config/waybar-quotes/quotes_no_comments.txt
sed -i '/^#/d' ~/.config/waybar-quotes/quotes_no_comments.txt

PICKED=$((1 + $RANDOM % $(sed -n '$=' ~/.config/waybar-quotes/quotes_no_comments.txt)))

head -$PICKED ~/.config/waybar-quotes/quotes_no_comments.txt | tail +$PICKED > ~/.config/waybar-quotes/picked.txt

if [ $'(cat ~/.config/waybar-quotes/picked.txt)' == '' ] ; 
then
    bash $0
fi
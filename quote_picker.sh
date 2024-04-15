#!/bin/bash

mkdir ~/.waybar-quotes

CURRENT_DIR=$(dirname -- "${BASH_SOURCE[0]}")
echo $CURRENT_DIR > ~/.waybar-quotes/dir.txt

grep '[^[:space:]]' $CURRENT_DIR/quotes.txt > ~/.waybar-quotes/quotes_no_comments.txt
sed -i '/^#/d' ~/.waybar-quotes/quotes_no_comments.txt

PICKED=$((1 + $RANDOM % $(sed -n '$=' ~/.waybar-quotes/quotes_no_comments.txt)))

head -$PICKED ~/.waybar-quotes/quotes_no_comments.txt | tail +$PICKED > ~/.waybar-quotes/picked.txt

if [ $'(cat ~/.waybar-quotes/picked.txt)' == '' ] ; 
then
    bash $0
fi
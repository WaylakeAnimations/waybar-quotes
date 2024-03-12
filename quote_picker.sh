#!/bin/bash

PICKED=$((1 + $RANDOM % $(sed -n '$=' ~/.config/waybar-quotes/quotes.txt)))

echo $(head -$PICKED ~/.config/waybar-quotes/quotes.txt | tail +$PICKED) > ~/.config/waybar-quotes/picked_quote.txt
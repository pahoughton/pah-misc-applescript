set cd_upc to ""
display dialog "Enter Upc" & return default answer cd_upc buttons {"OK"} default button 1
copy the result as list to {cd_upc, button_pressed}
set the output to do shell script "/opt/local/bin/perl ~/scripts/RipAudioCd.pl" & space & cd_upc
do shell script "afplay ~/Library/Sounds/uhoh.wav"
display alert output & return buttons {"OK"} default button 1 giving up after 5

set cd_upc to ""
display dialog "Enter Upc" & return default answer cd_upc buttons {"OK"} default button 1
copy the result as list to {cd_upc, button_pressed}
set the output to do shell script "echo" & space & cd_upc & " | ~/bin/CdInfo"
display dialog output & return buttons {"OK"} default button 1

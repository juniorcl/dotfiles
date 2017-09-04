#!/usr/bin/bash
#############################################################################################################################
############################################################################################################################# 
###                                                                                                                       ###
###                                                     Dzen2 Bar                                                         ### 
###                                                                                                                       ###
#############################################################################################################################
############################################################################################################################# 

## Dzen Config
##############
##############
#ICON_PATH=
#ICON_COLOR=
DZEN_BG="#000000"
DZEN_FG="#BEBEBE"
SEPARATOR="^fg(red).:^fg()"
DZEN_FONT="-*-terminus-medium-r-*-*-12-*-*-*-*-*-iso10646-*"
SLEEP=2

DZEN="dzen2 -ta r -fn $DZEN_FONT -bg $DZEN_BG -fg $DZEN_FG -dock"

## Dzen2 Info
#############
#############
Root()
{
    root_free=$(df -h / | sed '1d' | awk '{print $4}')
    echo "^fg($DZEN_FG) $root_free ^fg() $SEPARATOR" 
    return
}

Home()
{
    home_free=$(df -h /home | sed '1d' | awk '{print $4}')
    echo "^fg($DZEN_FG) $home_free ^fg() $SEPARATOR" 
    return
}

Mem()
{
    ram=$(free -mh | awk '{print $3}' | sed '1d' | sed '2d')
    echo "^fg($DZEN_FG) $ram ^fg() $SEPARATOR"
    return
}

Swap()
{
    swap=

Time()
{
    hour=$(date +"%H:%M")
    echo "^fg($DZEN_FG) $hour ^fg() $SEPARATOR"
    return
}

Date()
{
    date="$(date +"%d").$(date +"%b")"
    echo "^fg($DZEN_FG) $date ^fg() $SEPARATOR"
    return
}


## Print Dzen2
##############
##############
Print()
{
    Root
    Home
    Time
    Date
    return
}

while true
do
    echo "$(Print)" 
    sleep $SLEEP
done | $DZEN

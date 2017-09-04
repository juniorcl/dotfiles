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
function Kernel()
{
    kernel=$(uname -a | awk '{print $3}')
    echo -n "^fg($DZEN_FG) $kernel ^fg() $SEPARATOR"
    return
}

function Root()
{
    root_free=$(df -h / | sed '1d' | awk '{print $4}')
    echo -n "^fg($DZEN_FG) $root_free ^fg() $SEPARATOR" 
    return
}

function Home()
{
    home_free=$(df -h /home | sed '1d' | awk '{print $4}')
    echo -n "^fg($DZEN_FG) $home_free ^fg() $SEPARATOR" 
    return
}

function Ram()
{
    ram=$(free -mh | awk '{print $3}' | sed '1d' | sed '2d')
    echo -n "^fg($DZEN_FG) $ram ^fg() $SEPARATOR"
    return
}

function Swap()
{
    swap=$(free -mh | awk '{print $3}' | sed '1d' | sed '1d')
    echo -n "^fg($DZEN_FG) $swap ^fg() $SEPARATOR"
    return
}

function Date()
{
    date="$(date +"%d").$(date +"%b")"
    echo -n "^fg($DZEN_FG) $date ^fg() $SEPARATOR"
    return
}

function Time()
{
    hour=$(date +"%H:%M")
    echo -n "^fg($DZEN_FG) $hour ^fg()"
    return
}

## Print Dzen2
##############
##############
Print()
{
    Kernel
    Root
    Home
    Ram
    Swap
    Date
    Time
    return
}

while true
do
    echo "$(Print)" 
    sleep $SLEEP
done | $DZEN

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
ICON_PATH="$HOME/.dzen2/icon"
DZEN_BG="#770000"
DZEN_FG="#BEBEBE"
SEPARATOR="^fg(red)|^fg()"
DZEN_FONT="-*-terminus-medium-r-*-*-12-*-*-*-*-*-iso10646-*"
SLEEP=2
X=713
Y=0
WIDTH=650

DZEN="dzen2 -ta r -fn $DZEN_FONT -bg $DZEN_BG -fg $DZEN_FG -x $X -y $Y -w $WIDTH"

## Dzen2 Info
#############
#############
function Midle()
{
    echo -n "^fg($DZEN_FG)^i($ICON_PATH/da-024-l.xbm) "
}

function Kernel()
{
    kernel=$(uname -a | awk '{print $3}')
    echo -n "^i($ICON_PATH/Arch.xbm)^fg($DZEN_FG) $kernel ^fg() $SEPARATOR"
    return
}

function Root()
{
    root_free=$(df -h / | sed '1d' | awk '{print $4}')
    #root_free_porcent=$(df -h /home | sed '1d' | awk '{print $5}')
    echo -n "^fg($DZEN_FG) $root_free $root_free_porcent ^fg() $SEPARATOR" 
    return
}

function Home()
{
    home_free=$(df -h /home | sed '1d' | awk '{print $4}')
    #home_free_porcent=$(df -h /home | sed '1d' | awk '{print $5}')
    echo -n "^fg($DZEN_FG) $home_free $home_free_porcent ^fg() $SEPARATOR" 
    return
}

function Ram()
{
    ram=$(free -mh | awk '{print $3}' | sed '1d' | sed '2d')
    ram_porcent=$(free | grep Mem | awk '{print $3/$2 * 100}')
    echo -n " ^i($ICON_PATH/Mem.xbm)^fg($DZEN_FG) $ram $ram_porcent% ^fg() $SEPARATOR"
    return
}

function Swap()
{
    swap=$(free -mh | awk '{print $3}' | sed '1d' | sed '1d')
    swap_porcent=$(free | grep Swap | awk '{print $3/$2 * 100}')
    echo -n "^fg($DZEN_FG) $swap $swap_porcent% ^fg() $SEPARATOR"
    return
}

function Wifi()
{
    wifi_name=$(netctl list)
    if test -n $wifi_name
    then
        echo -n "$wifi_name $SEPARATOR"
    else
        echo -n "Not Connected $SEPARATOR"
    fi
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
    #Midle
    Kernel
    Root
    Home
    Ram
    Swap
    Wifi
    Date
    Time
    return
}

while true
do
    echo "$(Print)" 
    sleep $SLEEP
done | $DZEN

#!/bin/sh
# Configuração via parametro

RED=$1
GREY=$2
BLACK=$3
WHITE=$4

#monitor=${1:-0}

TAGS=( $(herbstclient tag_status $monitor) )
for i in "${TAGS[@]}" 
do
    case ${i:0:1} in
        '#')
            echo -n "^bg($BLACK)^fg($RED)"
            ;;
        '+')
            echo -n "^bg(#9CA668)^fg(#141414)"
            ;;
        ':')
            echo -n "^bg($BLACK)^fg($WHITE)"
            ;;
        '!')
            echo -n "^bg(#FF0675)^fg(#141414)"
            ;;
        *)
            echo -n "^bg()^fg()"
            ;;
	esac

	echo -n "^ca(1,\"${herbstclient_command[@]:-herbstclient}\" "
	echo -n "focus_monitor \"$monitor\" && "
        echo -n "\"${herbstclient_command[@]:-herbstclient}\" "              
	echo -n "use \"${i:1}\") ${i:1} ^ca()"
done

## old version
##############
#tag_selected=$(herbstclient list_monitors 0 | awk  -F '\"' '{print $2}')

#list_tags=( h e r b s t l u f )


#for (( x=0 ; x < ${#list_tags[*]} ; x++ ))
#do
#    if test "${list_tags[$x]}" = "$tag_selected"
#    then
#        echo -n "^fg($RED)  ${list_tags[$x]}  ^fg() "
#    else
#	echo -n "^bg($BLACK)^fg($GREY)  ^ca(1, herbstclient use ${list_tags[$x]})${list_tags[$x]}^ca()  ^fg()^bg() "
#    fi
#done

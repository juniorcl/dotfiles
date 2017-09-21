#!/bin/python3

from os import popen, system
import sys

tag_selected = popen("herbstclient list_monitors 0 | awk '{print $5}'").read().strip("\n").strip("\"")
tags = ""
works=["h","e","r","b","s","t","l","u","f"]

FG = "#BEBEBE"
BG = "#000000"
BG2 = "#770000"
FN = sys.argv[0]

for number in works:
    if str(number) == tag_selected: 
        tags = "%s ^bg(%s)^fg(%s) %s ^fg()^bg()" % (tags, BG, BG2, number)
    else:
        tags = "%s ^bg(%s)^fg(%s)  ^ca(1, herbstclient use %s)%s^ca()  ^fg()^bg()" % (tags, BG, FG, number, number)


print("%s" % tags)

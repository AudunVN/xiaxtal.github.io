#!/usr/bin/bash

rm all.html
while read i; do ./get.sh "$i" >> all.html; sleep $(( ( RANDOM % 4 )  + 1 )); done <files.list

#!/usr/bin/bash

FILE="$1"

TEXT=`wget -o /dev/null -O /dev/stdout "$FILE"`

echo "$TEXT" \
	| grep 'class="metadata"' -A 4 \
	| grep 'The Sigil Box' \
	| sed 's/ *<\/a>.*$/<\/h2>/;s/^ */<h2>/;'


#	| sed 's/The Sigil Box [0-9]*, //' \


echo

echo "$TEXT" \
	| grep 'div class="text"' -A 1000000000000  \
	| paste - - \
	| head -n 1

echo "<br /><br />"



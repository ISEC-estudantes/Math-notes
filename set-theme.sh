#!/bin/bash
HTMLFILES=$(find | grep .html)
CSSPATH="$PWD"/css/dark.css
PATHSCRIPT="$PWD"
for file in $HTMLFILES
do
	css_path=$(realpath --relative-to=$(dirname $file) $CSSPATH)
	replace_with='<link rel="stylesheet" href='"$css_path"'>\n</head>'
	if grep '<link rel="stylesheet" href='"$css_path"'>' "$file" > /dev/null
	then 
		continue
	fi
	sed -i 's+</head>+'"$replace_with"'+g' $file
done

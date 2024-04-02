#!/bin/bash
set -e
file=$1
line=$(cat /home/e15/scripts/$1 | dmenu -c -p "select line" -i -l 20 -nb black -nf white -sb dodgerblue -sf white -fn 'Monospace-12')
selected_field=$(echo "$line" | awk -F'~' '{print $2}')
formatted_field=$(echo -n "$selected_field" | sed 's/^[[:space:]]*//' )
# echo -n "$formatted_field" | xclip -selection c
xdotool type "$formatted_field"

#    Reads the contents of the file /home/e15/scripts/1.txt using cat.
#    Pipes the output of cat to dmenu to display a menu for selecting a line. The selected line is stored in the line variable.
#    Uses awk to extract the second field from the selected line, using ~ as the delimiter. The extracted field is stored in the selected_field variable.
#    uses the sed command with a regular expression pattern s/^[[:space:]]*// to remove any leading whitespace characters ([[:space:]]) from the selected_field variable. 
#    use echo -n flag to remove newline \n character
#    Pipes the contents of formatted_field to xclip to copy it to the clipboard using the c selection.
#    using xdotool type the output

# Code Copy
This Bash script reads the contents of a file, displays the lines in a menu using `dmenu`, and allows the user to select a line. The script then extracts the second field from the selected line, removes any leading and trailing whitespace characters, and copies the formatted field to the clipboard using `xclip`.

## Usage
To use this script, run the following command:

```
./code_cpy.sh <filename.txt>
```

## Note
- Replace `<filename.txt>` with the name of the file you want to read and select lines from.
- The `<filename.txt>` can contain lines to be selected in the form of `<Description> ~ <Command>`

## Dependencies
This script requires the following dependencies:

- `dmenu`: A dynamic menu for X11.
- `rofi`: An alternate dynamic menu.
- `awk`: A text processing tool for extracting fields from text files.
- `sed`: A stream editor for modifying text files.
- `xclip`: A command-line interface to the X11 clipboard.



----
* That's it! This script can be useful for quickly selecting and copying skeletal one liner code that are rarelly used or require minor tweking to work.
* I have so many alias that i keep forgetting the alias assigned to rarely used ones.

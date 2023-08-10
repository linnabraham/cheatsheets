# remove colour output
sed 's/\x1B\[[0-9;]\{1,\}[A-Za-z]//g'

# to select the 2nd line from a file
sed -n '2p'

# to make changes within the orginal file
sed -i

 # double space a file
 sed G

 # double space a file which already has blank lines in it. Output file
 # should contain no more than one blank line between lines of text.
 sed '/^$/d;G'

# To select the portion between a > and a double new line.
# i.e, a blockquote in markdown
 sed -n '/>/,/^$/p'

 # delete a pattern starting with null
sed '/^null/d'

# match pattern but select next line
sed -n '/PATTERN/{ n; p }'

# remove blank lines
sed '/^[[:space:]]*$/d'

# remove new line characters
sed ':a;N;$!ba;s/\n//g'

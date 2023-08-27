# print the quote character
\x27

# select output from first row
'NR==1{print $1}'

# print first field
awk '{print $1}'

# use a different field separator
awk -F "," '{print $1}'

# round to n decimal places
awk '{printf "%.2f",$1}'

# print all fields except one
awk '{for (i=2; i<NF; i++) printf $i " "; print $NF}' filename

# Specify awk multiple delimiters with
-F '[delimiters]' #If the delimiters are square brackets, put them back to back like this ][

#All printfs I know (and in C as per the C Standard) allow you to specify a literal percent with %%

# compare dates in awk
awk -F, -v date="$(date +%Y-%m-%d)" '$3>date'

# grep with awk
awk '/pattern/{ print $0 }' file

# awk space as separator
awk -F" "

# print all but first column
awk '{$1=""; print $0}' somefile

# inverse regex filter
awk '!/domain/ {print }' input

# one or more whitespace regex
^\s+

# anything but whitespace
[^\s]

# specify paranthesis in awk
\( \)

# catch extra spaces in the end
awk -F"," '$NF ~ /^NonRings[[:space:]]*$/ {print}'

# view evaluation results
cat eval_output.csv | awk -F"," '$NF ~ /^Rings[[:space:]]*$/ {print $1}' | sxiv -i

# ignore lines starting with a character like #
awk '!/^#/'

# Print specific fields from csv file based on field name instead of field index
awk -F',' 'NR == 1 { for (i=1; i<=NF; i++) { if ($i == "pRing" || $i == "PGC" || $i == "iRing" || $i == "oRing") field_indices[$i] = i } }
{ print $field_indices["pRing"], $field_indices["PGC"], $field_indices["iRing"], $field_indices["oRing"] }' efigi.csv

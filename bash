# To implement a for loop:
for file in *;
do
    echo $file found;
done

# To implement a case command:
case "$1"
in
    0) echo "zero found";;
    1) echo "one found";;
    2) echo "two found";;
    3*) echo "something beginning with 3 found";;
esac

# To turn on debugging:
set -x

# To turn off debugging:
set +x

# Retrieve N-th piped command exit status:
printf 'foo' | fgrep 'foo' | sed 's/foo/bar/'
echo ${PIPESTATUS[0]}  # replace 0 with N

# To create a lockfile:
( set -o noclobber; echo > my.lock ) || echo 'Failed to create lock file'

# dirname and basename
$ VAR='/home/pax/file.c'
$ DIR="$(dirname "${VAR}")" ; FILE="$(basename "${VAR}")"

# if echo does print newlines correctly
printf "\n Hello world"

# not operation
!

# if conditions
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
fi

# boolean keywords
true

# get a prompt and store response to var
read -p "greeting msg" var

# For all parameters to be passed the same.
# "$@" instead of plain $@

# loop using newlines as separator
IFS=$'\n'
for line in $(cmd);
....
done

# batch parallel process
N=4
(
for thing in a b c d e f g; do
   ((i=i%N)); ((i++==0)) && wait
   task "$thing" &
done
)

# not empty
-n

# bulk rename or add extension to all files

for f in *.png; do
    mv -- "$f" "$f.ext"
done

# Strip directory and suffix from filenames
${VAR%pattern} – Remove file extension

# To strip any extension
${VAR%.*}

# causes the shell to exit if any subcommand or pipeline returns a non-zero status.
set -e

# check if file or directory exists
[[ -d dirpath ]]

[[ -f filepath ]]

# arithmetic subtraction
count=$((FIRSTV-SECONDV))

# while loop
while true; do
stuff to do
done

# loop variable
COUNTER=0
for OUTPUT in $(seq 5)
do
    let COUNTER++
done

# logical operators
&& - and
when used with commands the second one executes only if the previous command was successful
|| - OR

# remove alias
unalias myalias

# loop through lines in a file
while read p ; do echo "$p"; done < file.txt

# run several commands in sequence
command1;command2;command3

# show all arguments except the first
echo "${@:2}"

# make multiple directories using bash pattern completion
mkdir {10..20}

# Declare two variables containing numbers
num1=10
num2=20

# Add the two numbers and store the result in a third variable
result=$((num1 + num2))

# Add colors
color='\033[38;2;240;198;116m'
reset='\033[0m'

# using exit codes
which conda # run a command
status=$?
if [[ $status -eq 1 ]]; then
statements to execute
fi

# process subsitition
wc <(cat /usr/share/dict/linux.words)

while read p; do mv ~/Downloads/efigi_png_gri-1.6/efigi-1.6/ALL/PGC00"$p".png EFIGI_RINGS/ ; done < <(cut -d',' ../EFIGI_Rings.csv -f2)

# basename fails when filename starts with hyphen
when the filename starts with a hyphen ("-"), it can be interpreted as an option by some commands, including basename.
To handle filenames that start with a hyphen, you can use the double dash (--) to indicate the end of options,

# bash not equal operator
-ne

# capture error output to variable
errors=$(ls non-existent-file 2>&1) 

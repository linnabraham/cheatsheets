# Using the perl-rename program in linux
# replace space with underscore in filenames
perl-rename 's/ /_/g' *
# replace all spaces and brackets with underscores
perl-rename 's/[ \(\)]/_/g;' filename

# to use blank lines as record separators and to use newlines as field separators
perl -l -p -e 'BEGIN {$/="";  $\="\n\n"}; s/\n/:/mg' input

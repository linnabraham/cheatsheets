# Working with jquery
values=`curl -s $api | jq --raw-output '.items[0]| .volumeInfo.title,.volumeInfo.authors[0]'`

# Parse json from trello export
cat KxP0n8CI.json | jq  -r '.cards[].name'

# raw ouput
--raw-output

# access variable in the base level
jq .access_token

# access recursively
jq '.. | .url? '

# multiple search patterns
jq -r '.url,.title'

# multiple search patterns appearing on same line
jq -r '"\(.url), \(.title)"'

# it might suffice to use the following line along with awk getline if you get grep -F to work in awk's grep
#title="$(jq -r '" \(.title)"' ~/data/ytwl.json | sed '/\[Private/d' | sed '/\[Deleted/d' | dmenu -l 30 -fn 'Comic Mono :size=13')"

# remove entries where field is empty and show corresponding id
jq 'del(..| select(.annotations? == []))| .. | .id?'


# select the level of nesting
#Combining the del function with the .[]? array/object value iterator to delete any key/value nested at the fourth level
jq 'del(.[]? | .[]? | .[]? | .[]?)'

# counting top level items
jq ' . | length'

# to open up group of values inside []
jq '.[]'

# selecting multiple level keys
jq ' .data | .[]' | jq '"\( .text), \(.history | .[] | .scoredUp)"'

# return ouput in different format
@csv

# convert json to csv
jq -r '.[] | [.rank, .id, .listed_at, .notes, .type, .movie.title, .movie.year, .movie.ids.imdb, .movie.ids.tmdb] | @csv' movies.json > movies.csv

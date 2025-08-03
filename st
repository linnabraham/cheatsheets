# To call st with specified alpha value
st -A 0.8

# Execute commands externally
st -e sh -c 'trans "$(xclip -o)" -t en; read'

# geometry
st -g "cols x lines"

# change font size
# dont use pixelsize
st -f "Monospace:size=14"



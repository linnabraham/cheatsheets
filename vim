# To execute shell commands
:! <command>

# To refer to the current file
%

# To convert md to beamer with bibliography
!pandoc % -t beamer -o "paper_slides.pdf" --bibliography='/home/guest/mybib.bib'

# To convert md to pdf with xelatex
!pandoc % -o --pdf-engine=xelatex "paper.pdf" --bibliography='/home/guest/mybib.bib'

# To remove blank lines
:g/^$/d

# show diff in vim
w !diff % -

# insert current date into vim using noremap and inoremap
F5

# insert date
:r! date

# To indent lines in vim after marking using visual mode
shift + >

# find and replace in vim
# replace find on all lines (globally)
:%s/find/replace/g

# change vim highlight to underline in spelling corrections
cterm=underline

# undo in vim
set undofile                " Save undos after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for und


#To replace period (.) by new line, use escape sequences as given below.
:%s/./\r/g

# To a load a different config file for vim
vim -u config-path

# insert dummy text using vim plugin
:Loremipsum

# see spelling suggestions
z=

# navigate between misspelled words
]s and [s

# ignore regional spelling
]S

# add word to dictionary and remove
zg and zug

# to go down and up half a page
ctrl d, u

# to put stuff in the middle
zz

#  to put in the botton and top respect
zb and zt

# i to insert at the beginn and A to append to the end
iA

# instead of d, $ to delete tll end of line use
D
# end of word
E

# motions
w - move forward a word
e - move foward a word till last char
b - back a word
} move by entire paragraphs
^, $ beginn and end of  line as in regex


di(  - delete all words inside paraenthsis
da(  - delete all words around paranthesis

'' to move where you where
N - to go to previous search result
V - select entire lines

:norm - run the command in normal mode on all selected lines
R - overwrite all letters in the word

# insert result of an expression in insert mode
<C-r>= means the following Ctrl+R=
<C-r>, without =, allows you to insert the content of any register at the cursor while staying in insert mode: <C-r>+, for example, inserts the content of my system clipboard

# navigate tags in vim
<C-]>

# move back
<C-t>

# exiting vim
ZQ

# exit with saving changes
ZZ

# to specify the name of the tags file
ctags -Rf .tags .

# default mapping for vimtex
\lv - open viewer
\ll - compilation toggle
\le - toggle the quick fix window

# insert unicode in vim if u have the corresponding emoji font
i
ctrl+v
u2713 to insert the unicode character U+2713

# deoplete plugin
# pynvim should be install in each virtual env

# delete between html tags
dit

# vimwiki - create a readable webpage
:VimWikiAll2HTML

# to check for broken links
:VimwikiCheckLinks

# update filename in links
\wr

# To change color scheme
:colorscheme <TAB>

# Search for word under cursor
*

# to solve issue with completion for vim-hug-neovim-rpc for an env activate env and
pip install neovim pynvim

# fix issue with carriag returns
:%s/^M$//

# open vimwiki automatically
autocmd VimEnter * if argc() == 0 | execute 'VimwikiIndex' | endif

# Gvim uses its own .gvimrc file for settings
if has('gui_running')
    " GUI colors
    colorscheme foo
else
    " Non-GUI (terminal) colors
    colorscheme bar
endif

# for dark version of theme
set background=dark

# nerdtree
Use the natural Vim navigation keys hjkl to navigate the files.
Press o to open the file in a new buffer or open/close directory.
Press t to open the file in a new tab.
Press i to open the file in a new horizontal split.
Press s to open the file in a new vertical split.
Press p to go to parent directory.
Press r to refresh the current directory.
Press m to launch NERDTree menu inside Vim

vim -u NONE -U NONE -N -i NONE

# This starts Vim in nocompatible mode (-N), without reading your viminfo file (-i NONE), without reading any configuration file (-u NONE for not reading .vimrc file and -U NONE for not reading a .gvimrc file) or even plugin.

# toggle vimtex quick fix dialog box
\le

# Jumping
Ctrl-O to jump back to the previous (older) location.
Ctrl-I (same as Tab) to jump forward to the next (newer) location.

# combine multiple commands at startup
-c "command 1 | command 2"

# setting font in gvim
set guifont="font \name"

# trigger complete citations in vimtex
ctrl-x ; ctrl-o

# dont use the virtualenv python within vim
PYTHONPATH="$(source deactivate; python3 -c "import sys; print(':'.join(sys.path))")" vim

# pressing tab seems to cycle between different links in file why?

# convert tabs to spaces
:set expandtab
:retab!
# convert spaces to tabs
:set tabstop=2      " To match the sample file
:set noexpandtab    " Use tabs, not spaces
:%retab!            " Retabulate the whole file


# vimrc snippets
"colors pyte
"colorscheme pyte
"colorscheme solarized
"if strftime("%H") < 18
  "set background=light
"else
  "set background=dark
"endif

" enable autocompletion in vim
" pynvim needs to be installed
"if has('nvim')
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
"Plug 'deoplete-plugins/deoplete-jedi'
""if !has('nvim') " Vim 8 only
	""pythonx import pynvim
""endif


# dont load plugins
vim --clean

#reload config
:source %

# copy in sudo vim
ctrl + shift + v # in insert mode

# change case
~ invert the case of the character under the cursor (i.e. lowercase becomes UPPERCASE and vice versa)
g~ followed by motion inverts the case of those characters
for example: g~e, g~$, g~iw, etc
gu followed by motion changes those characters to lowercase
for example: gue, gu$, guiw, etc
gU followed by motion changes those characters to UPPERCASE
for example: gUe, gU$, gUiw, etc

# To insert tab character go to insert mode
Ctrl+v <tab>

# To bring up content in the next line to the end of the current line
J

# use the surround plugin to enclose visual selection with paranthesis 
leader + Sb

It actually can do a lot of surrounding: various quotes, tags, etc. It allows you to put cursor in the double-quoted word and change double quotes to single quotes by typing: cs"' (change-surround " to '). Or you can completely delete quotes by typing ds" (delete-surround ").

Read the docs by link, it is really awesome!

# Vimdiff
# to bring the changes of the current block of code from other file into current one
do

# to unfold all folds
zr

# to close folded lines
zc

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
# see changes before saving
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
:'<,'>s/find/replace/g # for selected text

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

# delete entire word before the cursor.

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

# to go to a definition in any file use ctags and create tags first
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
set background=dark # the theme set in the terminal can interfere with vim theme

# nerdtree
Use the natural Vim navigation keys hjkl to navigate the files.
Press o to open the file in a new buffer or open/close directory.
Press t to open the file in a new tab.
Press i to open the file in a new horizontal split.
Press s to open the file in a new vertical split.
Press p to go to parent directory.
Press r to refresh the current directory.
Press m to launch NERDTree menu inside Vim

# Start Vim in nocompatible mode (-N), without reading your viminfo file (-i NONE), without reading any configuration file (-u NONE for not reading .vimrc file and -U NONE for not reading a .gvimrc file) or even plugin.
vim -u NONE -U NONE -N -i NONE

# toggle vimtex quick fix dialog box
\le

# Jumping
Ctrl-O to jump back to the previous (older) location.

# Go forward
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

It actually can do a lot of surrounding: various quotes, tags, etc.
It allows you to put cursor in the double-quoted word and change double quotes to single quotes by typing: cs"' (change-surround " to ').
Or you can completely delete quotes by typing ds" (delete-surround ").

Read the docs by link, it is really awesome!

# another way to surround with paranthesis is:
yss(

# surround with paraenthsis but without space
ysiwb

# to surround with curly braces
yss{

# Vimdiff
# to bring the changes of the current block of code from other file into current one
do

# to unfold all folds
zr

# to close folded lines
zc

# close all splits at once
:qall

# check and load changes made on disk
:checktime

# remove the BOM character
# <U+FEFF> character showing up in certain files
awk '{ gsub(/\xef\xbb\xbf/,""); print }' INFILE > OUTFILE

# fix issues with paste in vim
Before entering insert mode to paste, run :set paste. 
Turn it off once you leave insert mode with :set nopaste.

# key bindings
# bring up python help on current word
K

# yank all word (including trailing space)
yaw

# yank all paragraph including trailing newline
yap

# yank 3 lines starting at current one
3yy

# yank one character to the right of cursor
yl

# write to disk and exit (changes modification time) only when the file has changed
:x

# copy doesnt work with sudo vim
# press down shift while copying to make selection by mouse not go to visual mode
# https://superuser.com/questions/436890/cant-copy-to-clipboard-from-vim 

# also check this
https://stackoverflow.com/questions/4608161/copying-text-outside-of-vim-with-set-mouse-a-enabled

# vim built in to go directly to file on cursor
gf

# go back to original file
<C-o>

# open the built in file explorer
:Ex or :Explore

# vimrc file env variable  or use vim --version to see
:echo $MYVIMRC

# backspace whole words using ctrl+backspace
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

# edit remote file directly
vim /path/to/local/file  scp://remote//path/to/remote/file  -O

# navigate to the previous location from normal mode
ctrl-o

# navigate to the next location
ctrl-I

# replace using r doesnt work reliably in visual selection use :s//

# delete entire word ignoring characters like hyphens
df<space>

# vimagit keybinds
# refresh
R

# specify evince as the default pdf reader in vimtex plugin
let g:vimtex_view_general_viewer = 'evince'

# open a new tab
:tabnew filename

# open a file readonly in vim
-R 

# Change each 'foo' to 'bar', but ask for confirmation first.
:%s/foo/bar/gc

# open terminal inside vim window
:terminal

# find the next instance of a character
f<char>

# go to normal mode temporarily from insert mode
ctrl-o

# go to end of current word from normal mode and drop to insert mode
ea
# the same can be emulated with f<space>
# this is also useful if you are already in insert mode

# open NERDTree from base of current file
:NERDTreeFind

# open another file in a vertical split
:vsplit filename

# open in horizontal split
:split filename

# check file format is dos or unix
:set ff?

# indent the next n lines without first selecting those
# here n=9
>9>

# join the following line to current line
J

# autocompletion for python
# install python extension in coc vim plugin
:CocInstall coc-python

# disable overlay type hints etc.
Open :CocConfig, set pyright.inlayHints.enable: false

# install python-nvim for python support in nvim

# restore split to original size
<C-w> =
# use full width for split pane
<C-w> |
# use full height for split pane
<C-w> _

# delete lines matching pattern
:g/error/d

# search and replace in visual block
:'<,'>s/old/new/g

# run python code
:w !python

# run selected code
:'<,'>!python

# dependency of coc vim plugin
node
pylint
jedi

# search for a unicode character which is invisible in vim
/\%u202f  # U+202F

# use the magit plugin in nvim
nvim -c MagitOnly

# remove all trailing whitespace in vim
:%s/\s\+$//e

# Open coc config
:CocConfig

# substitute in visual block
use c (change) after selecting visual block

# By default, vim-instant-markdown will automatically launch the preview window when you open a Markdown file.
# If you want to manually control this behavior, you can specify
#
let g:instant_markdown_autostart = 0
#
# in your .vimrc. You can then manually trigger preview via the command :InstantMarkdownPreview.

# for persistent undo
https://stackoverflow.com/questions/17936130/vim-undo-undo-changes-after-file-write

# search and replace everything in between the \verb|....| pattern
s/\v\\verb\|([^|]*)\|/\\texttt{\1}/g

# very magic mode reduces the need to escape most characters.
# For example, |, (, ) become special unless you escape them.
# In \v mode, to match a literal pipe |, you must escape it as \|
:s/\v<pattern>

# turn off search highlight
:noh

# use the vim-gnupg plugin for writing an encrypted message using vim
# put this in the first line
# https://www.lotharschulz.info/2018/10/21/transparent-editing-of-gpg-encrypted-files-with-vim/
[your name used in gpg key] <[your email used in gpg key]>

# Turn on and off the linting provided by ALE
:ALEDisable
:ALEEnable

# keybinds to use spellcheck
]s                         " Next misspelled word
[s                         " Previous misspelled word
z=                         " Fix word (show suggestions)

# run a terminal or bash command in vim
:!ls

# for language related checks and completion
:CocInstall coc-spell-checker
:CocInstall coc-word
:CocConfig
{
  "coc.source.spell.filetypes": ["markdown", "text", "tex", "plaintex"],
  "coc.source.spell.enable": true,
  "spell-checker.language": "en-US"
}

# record a macro
# say, into register q
qq
# stop recording
q

# repeat the macro
@q
# repeat the macro 10 times
10@q

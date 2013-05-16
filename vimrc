set autoindent
set showmatch
set showmode
set shiftwidth=2
set tabstop=8
set expandtab
set smarttab
set backup
set backupdir=~/.backup
set vb t_vb=

"set guifontset=-adobe-courier-medium-r-normal--8-80-75-75-m-50-iso8859-1

se ai

se tags+=/auto/andusr/angoyal/sf/VegasSW/tags
se tags+=~/ZebOS/CTAGS

" allow backspace to delete newlines and beyond the start of the insertion point
set backspace=2

" we have a fast terminal connection
set ttyfast

" recognize ^M files
"set textauto


set ignorecase

"show filename
set laststatus=2

set ruler

set is

" suffixes to put to the end of the list when completing file names
set suffixes=.bak,~,.o,.h,.info,.swp,.class

" patterns to put to ignore when completing file names
" set wildignore=*.bak,~,*.o,*.info,*.swp,*.class

" Color
hi Visual  gui=reverse guifg=Blue guibg=grey
hi VisualNOS guifg=Blue

" hi Comment term=Red
" hi statement ctermfg=blue
" hi Constant ctermfg=5


map =s o/* Bug fix change start */
map =e o/* Bug fix change end */

if &term =~ "xterm"
if has("terminfo")
  set t_Co=8
  set t_Sf=3%p1%dm
  set t_Sb=4%p1%dm
else
  set t_Co=8
  set t_Sf=3%dm
  set t_Sb=4%dm
endif
endif


if &t_Co > 1
   syntax on
endif


"map  /^configure_terminal_route_map_h<cr><C-Up><C-Up><C-Up><C-Up>ma/^no_configure_terminal_route_map_set_weight_h<cr><C-Down>%<C-Down><C-Down>"ay'a/^show_route_map_h<cr><C-Up><C-Up><C-Up><C-Up>mb/^show_route_map_h<cr><C-Down>%<C-Down><C-Down>"by'b:e! ~ankurg/.foo_handlers.c<cr>:$<cr>"ap:$<cr>"bp:w! ~ankurg/routemap_handlers.c<cr>:rew!<cr>


" Maintained by: Roy van der Meij
" roy@royapps.nl

set nocompatible "Always use vim mode, even when starting with vi
set backspace=indent,eol,start  " allow backspacing over everything in insert mode

filetype on
filetype plugin indent on
syntax on

call pathogen#runtime_append_all_bundles()

set autoindent        "always set autoindenting on
set history=50        "keep 50 lines in history
set ruler             "always show cursor
set showcmd           "display incomplete commands
set mouse=a           "enable mouse
set mousehide         "hide mouse when typing
set number            "show line numbers
set timeoutlen=500    "don't lag the leader key + command
set nofoldenable      "don't fold by default

" tabs to spaces and 2 width
set tabstop=2
set shiftwidth=2
set softtabstop=2

set listchars=tab:▸\ ,eol:¬ " fancy tabstops and eols symbols

" Backup directories (don't polute project directory with .swp files)
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" fancy status line
set statusline=%t%(\ [%n%M]%)%(\ %H%R%W%)\ %(%c-%v,\ %l\ of\ %L,\ (%o)\ %P\ 0x%B\ (%b)%)

" Automatic go to last edited line when opening file
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Shortcuts
nmap <leader>l :set list!<CR>
:map <C-t> :FuzzyFinderTextMate<CR>
:map <C-f> :ruby finder.rescan!<CR>
:noremap ,n :NERDTreeToggle<CR>
:noremap ,r :NERDTreeFind<CR>
map ,b :%s/></>\r</g<CR>:1<CR>=G " beautify xml

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Split settings
nnoremap <leader>v <C-w>v
nnoremap <leader>s <C-w>s
set splitbelow   "Split windows below the current window.

" typo fixes
command! Q q
command! W w
command! Wq wq
command! Vsp vsp
command! Sp sp

" set 256 colors
set t_Co=256

if has('gui_running')
  set background=light
  colorscheme solarized
else
  set background=dark
  colorscheme molokai
endif

" filetype mappings
au BufRead,BufNewFile {Gemfile,Rakefile,Guardfile,Vagrantfile,Thorfile,config.ru}    set ft=ruby
au BufRead,BufNewFile *.json set ft=javascript

" load operating system specific settings
let uname = substitute(system("uname"),"\n","","g")
if uname == "Linux" "ubuntu stuff
  :so ~/dotfiles/vimrc.linux
elseif uname == "Darwin" "osx stuff
  :so ~/dotfiles/vimrc.osx
endif

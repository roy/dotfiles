" Maintained by: Roy van der Meij
" roy@royapps.nl

set nocompatible                  " Always use vim mode, even when starting with vi

silent! call pathogen#runtime_append_all_bundles()

filetype plugin on
filetype indent on
syntax on

" set ruby path so ruby.vim can find it fast 
" without this there is an extra 12 seconds of loading!!
if !empty($MY_RUBY_HOME)
   let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/ruby/site_ruby/*'),"\n"),',')
endif

runtime macros/matchit.vim        " Load the matchit plugin.

set backspace=indent,eol,start    " Allow backspacing over everything in insert mode

set autoindent                    " Always set autoindenting on
set history=50                    " Keep 50 lines in history
set ruler                         " Always show cursor
set showcmd                       " Display incomplete commands
set mouse=a                       " Enable mouse
set mousehide                     " Hide mouse when typing
set number                        " Show line numbers
set timeoutlen=500                " Don't lag the leader key + command
set nofoldenable                  " Don't fold by default

set expandtab                     " Use spaces instead of tabs
set tabstop=2                     " Global tab width
set shiftwidth=2
set softtabstop=2

set listchars=tab:▸\ ,eol:¬       " fancy tabstops and eols symbols

" set rake as default build mechanism for vim"
set makeprg=rake

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
map <C-t> :FuzzyFinderTextMate<CR>
map <C-f> :ruby finder.rescan!<CR>
nmap ,n :NERDTreeToggle<CR>
nmap ,r :NERDTreeFind<CR>
map ,b :%s/></>\r</g<CR>:1<CR>=G " beautify xml

" Emacs-like beginning and end of line.
imap <c-e> <c-o>$
imap <c-a> <c-o>^

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

" tagbar
nmap <F8> :TagbarToggle<CR>

" set 256 colors
set t_Co=256
""set encoding=utf-8
"colorscheme Tomorrow-Night
"colorscheme bespin
"colorscheme smyck
colorscheme molokai

" filetype mappings
au BufRead,BufNewFile {Gemfile,Rakefile,Guardfile,Vagrantfile,Thorfile,config.ru,*.rabl}    set ft=ruby
au BufRead,BufNewFile Watchr set ft=ruby
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.hjs  set ft=handlebars
au BufRead,BufNewFile *.zsh-theme  set ft=sh
au BufRead,BufNewFile *.as set ft=actionscript

" load operating system specific settings
let uname = substitute(system("uname"),"\n","","g")
if uname == "Linux" "ubuntu stuff
  :so ~/dotfiles/vimrc.linux
elseif uname == "Darwin" "osx stuff
  :so ~/dotfiles/vimrc.osx
endif

" CntrP settings
let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'



" jamessan's
""set statusline=   " clear the statusline for when vimrc is reloaded
""set statusline+=%f\                          " file name
""set statusline+=%h%m%r%w                     " flags
""set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
""set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
""set statusline+=%{&fileformat}]              " file format
""set statusline+=%=                           " right align
"""set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
"""set statusline+=%b,0x%-8B\                   " current char
""set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

" spiiph's
set statusline=
set statusline+=%#warningmsg#%{SyntasticStatuslineFlag()}%*\  "syntax errors"
set statusline+=%<\                       " cut at start
"set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
set statusline+=%-40f\                    " path
set statusline+=%=%1*%y%*%*\              " file type
set statusline+=%10((%l,%c)%)\            " line and column
set statusline+=%{fugitive#statusline()}\  "git branch"
set statusline+=%P                       " percentage of file

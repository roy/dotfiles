" Maintained by: Roy van der Meij
" roy@royapps.nl

" Always use vim mode, even when starting with vi
set nocompatible

" set ruby path so ruby.vim can find it fast 
" without this there is an extra 12 seconds of loading!!
if !empty($MY_RUBY_HOME)
   let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/ruby/site_ruby/*'),"\n"),',')
endif

" Vundle setup
filetype off 
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" BUNDLES "
Bundle 'gmarik/vundle'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-commentary'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'git://github.com/vim-scripts/matchit.zip'

" dependency for snipmate
Bundle 'tomtom/tlib_vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "garbas/vim-snipmate"

Bundle 'tsaleh/vim-align'
Bundle 'godlygeek/tabular'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

Bundle 'altercation/vim-colors-solarized'
"Bundle 'endel/vim-github-colorscheme'

" syntax higlighting
Bundle 'tpope/vim-liquid'
Bundle 'groenewege/vim-less'
Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'slim-template/vim-slim'

" statusline
set laststatus=2
let g:Powerline_symbols='unicode'
let g:Powerline_dividers_override= [ '', [0x2502], '', [0x2502] ]

filetype plugin indent on     " required!

syntax enable

set encoding=utf-8

" CntrP settings
let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'

" Solarized
set background=dark
"colorscheme railscasts
colorscheme grb256

" default settings
set backspace=indent,eol,start    " Allow backspacing over everything

set autoindent                    " Always set autoindenting on
set history=50                    " Keep 50 lines in history
set ruler                         " Always show cursor
set showcmd                       " Display incomplete commands
set mouse=a                       " Enable mouse
set mousehide                     " Hide mouse when typing
set number                        " Show line number on current line
set relativenumber                " show relative numbers
set hlsearch                      " highlight search
"set tw=79                         " width of document
"set nowrap                        " don't automatically wrap on load
"set fo-=1                         " don't automatically wrap text when typing
"set colorcolumn=80                " highlight column 80
"hi ColorColumn ctermbg=235       " give it a color
set timeoutlen=500                " Don't lag the leader key + command

set expandtab                     " Use spaces instead of tabs
set tabstop=2                     " Global tab width
set shiftwidth=2
set softtabstop=2
set listchars=tab:▸\ ,extends:>,precedes:< " fancy tabstops and eols symbols

nmap <leader>l :set list!<CR>
set list
set cursorline                    " highlight current line
set shell=bash

" Backup directories (don't polute project directory with .swp files)
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Automatic go to last edited line when opening file
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

" Nerdtree
nmap ,n :NERDTreeToggle<CR>
nmap ,r :NERDTreeFind<CR>

" filetype mappings
au BufRead,BufNewFile {Gemfile,Rakefile,Guardfile,Vagrantfile,Thorfile,config.ru,*.rabl,*.pill}    set ft=ruby
au BufRead,BufNewFile Watchr set ft=ruby
au BufRead,BufNewFile *.json set ft=javascript
au BufRead,BufNewFile *.hjs  set ft=handlebars
au BufRead,BufNewFile *.zsh-theme  set ft=sh
au BufRead,BufNewFile *.as set ft=actionscript
au BufRead,BufNewFile *.md set ft=markdown

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RUNNING TESTS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>t :call RunTestFile()<cr>
map <leader>T :call RunNearestTest()<cr>
map <leader>A :call RunTests('')<cr>
map <leader>c :w\|:!script/features<cr>
map <leader>w :w\|:!script/features --profile wip<cr>


function! RunTestFile(...)
    if a:0
        let command_suffix = a:1
    else
        let command_suffix = ""
    endif

    " Run the tests for the previously-marked file.
    let in_test_file = match(expand("%"), '\(.feature\|_spec.coffee\|_spec.rb\)$') != -1
    if in_test_file
        call SetTestFile()
    elseif !exists("t:grb_test_file")
        return
    end
    call RunTests(t:grb_test_file . command_suffix)
endfunction

function! RunNearestTest()
    let spec_line_number = line('.')
    call RunTestFile(":" . spec_line_number . " -b")
endfunction

function! SetTestFile()
    " Set the spec file that tests will be run for.
    let t:grb_test_file=@%
endfunction

function! RunTests(filename)
  " Write the file and run tests for the given filename
  :w
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo
  :silent !echo;echo;echo;echo;echo;echo;echo;echo;echo;echo

  " First choice: project-specific test script
  if filereadable("bin/test")
    exec ":!bin/test " . a:filename
  elseif match(a:filename, '\.feature$') != -1
    exec ":!script/features " . a:filename
  elseif match(a:filename, '_spec\.rb$') != -1
    if filereadable("Gemfile")
      if match(join(readfile('./Gemfile')), 'spring') != -1
        exec ':!bundle exec spring rspec --color --format documentation ' . a:filename
      else
        exec ':!bundle exec rspec --color --format documentation ' . a:filename
      endif
    end
  else
    echo "whoops"
  endif
endfunction

" rspec extra's
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

" rails quickwins
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>


" Vim... Live it... "
" noremap <Up> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>
" noremap <Right> <nop>
" inoremap <Up> <nop>
" inoremap <Down> <nop>
" inoremap <Left> <nop>
" inoremap <Right> <nop>

" xmpfilter
nmap <leader>r <Plug>(xmpfilter-run)
xmap <leader>r <Plug>(xmpfilter-run)
imap <leader>r <Plug>(xmpfilter-run)

nmap <leader>m <Plug>(xmpfilter-mark)
xmap <leader>m <Plug>(xmpfilter-mark)
imap <leader>m <Plug>(xmpfilter-mark)

nmap <buffer> <F5> <Plug>(xmpfilter-run)
xmap <buffer> <F5> <Plug>(xmpfilter-run)
imap <buffer> <F5> <Plug>(xmpfilter-run)

nmap <buffer> <F4> <Plug>(xmpfilter-mark)
xmap <buffer> <F4> <Plug>(xmpfilter-mark)
imap <buffer> <F4> <Plug>(xmpfilter-mark)

" easier moving of code blocks
vnoremap < <gv
vnoremap > >gv 

" automatically reload vimrc when it's saved
" au BufWritePost .vimrc so ~/.vimrc

" open last/alternate buffer
noremap <Leader><Leader> <C-^>

" paste toggle
set pastetoggle=<F8>

" split handling
"Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>=" 
set splitbelow
set splitright

" typo fixes
command! Q q
command! W w
command! Wq wq
command! Sp sp
command! Qall qall
command! Vsp vsp

set nofoldenable                  " Don't fold by default
set foldlevel=99


" Intuitive moving the cursor for wrapped lines
:map j gj
:map k gk

" set clipboard to system clipboard
set clipboard=unnamed

" ag override
" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --nogroup --nocolor --column'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" disable backup file for crontab
autocmd filetype crontab setlocal nobackup nowritebackup

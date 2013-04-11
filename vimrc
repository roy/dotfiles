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
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdtree'
Bundle 'nono/vim-handlebars'
Bundle 'groenewege/vim-less'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-liquid'
Bundle 'tpope/vim-endwise'
Bundle 'tsaleh/vim-align'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'endel/vim-github-colorscheme'
Bundle 'vim-ruby/vim-ruby'
Bundle 'mileszs/ack.vim'
Bundle 'guns/xterm-color-table.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'othree/html5.vim'
Bundle 'Lokaltog/vim-powerline'

" statusline
set laststatus=2
let g:Powerline_symbols='unicode'
let g:Powerline_dividers_override= [ '', [0x2502], '', [0x2502] ]

filetype plugin indent on     " required!

syntax enable

" CntrP settings
let g:ctrlp_map = '<c-t>'
let g:ctrlp_cmd = 'CtrlP'

" Solarized
set background=dark
colorscheme railscasts

" default settings
set backspace=indent,eol,start    " Allow backspacing over everything

set autoindent                    " Always set autoindenting on
set history=50                    " Keep 50 lines in history
set ruler                         " Always show cursor
set showcmd                       " Display incomplete commands
set mouse=a                       " Enable mouse
set mousehide                     " Hide mouse when typing
set number                        " Show line numbers
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
au BufRead,BufNewFile {Gemfile,Rakefile,Guardfile,Vagrantfile,Thorfile,config.ru,*.rabl}    set ft=ruby
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
    if match(a:filename, '\.feature$') != -1
        exec ":!script/features " . a:filename
    else
        if filereadable("script/test")
            exec ":!script/test " . a:filename
        "elseif filereadable("Gemfile")
        "    exec ":!bundle exec rspec --color " . a:filename
        else
            exec ":!rspec --color --format documentation " . a:filename
        end
    end
endfunction

" rspec extra's
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

" rails quickwins
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>

" set clipboard to system clipboard
set clipboard=unnamed

" Vim... Live it... "
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" xmpfilter
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

" Resize splits when the window is resized
au VimResized * exe "normal! \<c-w>="

" typo fixes
command! Q q
command! W w
command! Wq wq
command! Sp sp
command! Qall qall
command! Vsp vsp

set nofoldenable                  " Don't fold by default
set foldlevel=99


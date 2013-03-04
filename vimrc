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

"set listchars=eol:¬,tab:▸\ ,trail:~,extends:>,precedes:< " fancy tabstops and eols symbols
set listchars=tab:▸\ ,extends:>,precedes:< " fancy tabstops and eols symbols
set list
set cursorline                    " highlight current line

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
"colorscheme molokai
"colorscheme grb256
"let g:solarized_termcolors=256
"set background=dark
"colorscheme solarized
colorscheme railscasts

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

set makeprg=ruby\ %
set shell=bash

"nmap <C-m> :make<CR>
let g:rubytest_cmd_spec = "ruby %p"

" fast rails navigation
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr> 

" window management
"set winwidth=84
"set winheight=10
"set winminheight=10
"set winheight=999

" switch between the last two files
nnoremap <leader><leader> <c-^>


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

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function


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

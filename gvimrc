if has("gui_running")
  "set transparency=1

  "set guifont=Monaco:h11
  "Font can be found at: https://github.com/andreberg/Meslo-Font
  "set guifont=Meslo\ LG\ S\ DZ:h12
  set guifont=Menlo:h13
  set fuoptions=maxvert,maxhorz
  :map <D-enter> :set fullscreen! <CR>
  set co=150
  set lines=55
  set go-=T
  set linespace=3
  
  " remove scrollbars
  set guioptions-=r
  set guioptions-=L

  "tab switching in normal mode
  map <D-1> :tabn 1<CR>
  map <D-2> :tabn 2<CR>
  map <D-3> :tabn 3<CR>
  map <D-4> :tabn 4<CR>
  map <D-5> :tabn 5<CR>
  map <D-6> :tabn 6<CR>
  map <D-7> :tabn 7<CR>
  map <D-8> :tabn 8<CR>
  map <D-9> :tabn 9<CR>

  "tab switching in insert mode
  map! <D-1> <C-O>:tabn 1<CR>
  map! <D-2> <C-O>:tabn 2<CR>
  map! <D-3> <C-O>:tabn 3<CR>
  map! <D-4> <C-O>:tabn 4<CR>
  map! <D-5> <C-O>:tabn 5<CR>
  map! <D-6> <C-O>:tabn 6<CR>
  map! <D-7> <C-O>:tabn 7<CR>
  map! <D-8> <C-O>:tabn 8<CR>
  map! <D-9> <C-O>:tabn 9<CR>

  macmenu &File.New\ Tab key=<nop>
  map <D-t> <Plug>PeepOpen
endif

if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  "map <D-t> <Plug>PeepOpen
  "map <C-t> <Plug>PeepOpen

  map <D-t> :CtrlP<CR>
  map! <D-t> <C-0>:CtrlP<CR>
  "let g:ctrlp_map = '<c-t>'
  "let g:ctrlp_cmd = 'CtrlP'
end

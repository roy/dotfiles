" Vim color file
" Converted from Textmate theme Notebook using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Notebook"

hi Cursor ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#000000 gui=NONE
hi Visual ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#f5f4f0 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=144 cterm=NONE guifg=NONE guibg=#b0a991 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=144 cterm=NONE guifg=NONE guibg=#b0a991 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=144 cterm=NONE guifg=NONE guibg=#b0a991 gui=NONE
hi LineNr ctermfg=95 ctermbg=144 cterm=NONE guifg=#787363 guibg=#b0a991 gui=NONE
hi VertSplit ctermfg=102 ctermbg=102 cterm=NONE guifg=#958f7b guibg=#958f7b gui=NONE
hi MatchParen ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi StatusLine ctermfg=52 ctermbg=102 cterm=bold guifg=#312f29 guibg=#958f7b gui=bold
hi StatusLineNC ctermfg=52 ctermbg=102 cterm=NONE guifg=#312f29 guibg=#958f7b gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=231 cterm=NONE guifg=NONE guibg=#f5f4f0 gui=NONE
hi IncSearch ctermfg=NONE ctermbg=138 cterm=NONE guifg=NONE guibg=#c08776 gui=NONE
hi Search ctermfg=NONE ctermbg=138 cterm=NONE guifg=NONE guibg=#c08776 gui=NONE
hi Directory ctermfg=181 ctermbg=116 cterm=NONE guifg=#c5bda7 guibg=#7ccfd3 gui=NONE
hi Folded ctermfg=187 ctermbg=145 cterm=NONE guifg=#dfd2b6 guibg=#beb69d gui=NONE

hi Normal ctermfg=52 ctermbg=145 cterm=NONE guifg=#312f29 guibg=#beb69d gui=NONE
hi Boolean ctermfg=181 ctermbg=116 cterm=NONE guifg=#c5bda7 guibg=#7ccfd3 gui=NONE
hi Character ctermfg=181 ctermbg=116 cterm=NONE guifg=#c5bda7 guibg=#7ccfd3 gui=NONE
hi Comment ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dfd2b6 guibg=NONE gui=italic
hi Conditional ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi ErrorMsg ctermfg=15 ctermbg=131 cterm=NONE guifg=#ffffff guibg=#bf363b gui=NONE
hi WarningMsg ctermfg=15 ctermbg=131 cterm=NONE guifg=#ffffff guibg=#bf363b gui=NONE
hi Float ctermfg=52 ctermbg=155 cterm=NONE guifg=#312f29 guibg=#a3ec5a gui=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Identifier ctermfg=181 ctermbg=144 cterm=NONE guifg=#c5bda7 guibg=#aca38c gui=NONE
hi Keyword ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi Label ctermfg=181 ctermbg=185 cterm=NONE guifg=#c5bda7 guibg=#ded049 gui=NONE
hi NonText ctermfg=144 ctermbg=144 cterm=NONE guifg=#b0a58b guibg=#b7af97 gui=NONE
hi Number ctermfg=52 ctermbg=155 cterm=NONE guifg=#312f29 guibg=#a3ec5a gui=NONE
hi Operator ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi PreProc ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi Special ctermfg=52 ctermbg=NONE cterm=NONE guifg=#312f29 guibg=NONE gui=NONE
hi SpecialKey ctermfg=144 ctermbg=144 cterm=NONE guifg=#b0a58b guibg=#b0a991 gui=NONE
hi Statement ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi StorageClass ctermfg=181 ctermbg=144 cterm=NONE guifg=#c5bda7 guibg=#aca38c gui=NONE
hi String ctermfg=181 ctermbg=185 cterm=NONE guifg=#c5bda7 guibg=#ded049 gui=NONE
hi Tag ctermfg=52 ctermbg=144 cterm=NONE guifg=#312f29 guibg=#b4aa93 gui=NONE
hi Title ctermfg=52 ctermbg=NONE cterm=bold guifg=#312f29 guibg=NONE gui=bold
hi Todo ctermfg=187 ctermbg=NONE cterm=inverse,bold guifg=#dfd2b6 guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi rubyFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=181 ctermbg=116 cterm=NONE guifg=#c5bda7 guibg=#7ccfd3 gui=NONE
hi rubyConstant ctermfg=24 ctermbg=NONE cterm=NONE guifg=#1d368f guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=181 ctermbg=185 cterm=NONE guifg=#c5bda7 guibg=#ded049 gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=181 ctermbg=144 cterm=NONE guifg=#c5bda7 guibg=#9ea982 gui=NONE
hi rubyInclude ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=181 ctermbg=144 cterm=NONE guifg=#c5bda7 guibg=#9ea982 gui=NONE
hi rubyRegexp ctermfg=181 ctermbg=185 cterm=NONE guifg=#c5bda7 guibg=#ded049 gui=NONE
hi rubyRegexpDelimiter ctermfg=181 ctermbg=185 cterm=NONE guifg=#c5bda7 guibg=#ded049 gui=NONE
hi rubyEscape ctermfg=181 ctermbg=116 cterm=NONE guifg=#c5bda7 guibg=#7ccfd3 gui=NONE
hi rubyControl ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi rubyException ctermfg=160 ctermbg=NONE cterm=NONE guifg=#c52727 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=181 ctermbg=144 cterm=NONE guifg=#c5bda7 guibg=#9ea982 gui=NONE
hi rubyRailsUserClass ctermfg=24 ctermbg=NONE cterm=NONE guifg=#1d368f guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=181 ctermbg=175 cterm=NONE guifg=#c5bda7 guibg=#d78c9c gui=NONE
hi rubyRailsARMethod ctermfg=181 ctermbg=175 cterm=NONE guifg=#c5bda7 guibg=#d78c9c gui=NONE
hi rubyRailsRenderMethod ctermfg=181 ctermbg=175 cterm=NONE guifg=#c5bda7 guibg=#d78c9c gui=NONE
hi rubyRailsMethod ctermfg=181 ctermbg=175 cterm=NONE guifg=#c5bda7 guibg=#d78c9c gui=NONE
hi erubyDelimiter ctermfg=181 ctermbg=187 cterm=NONE guifg=#c5bda7 guibg=#d2ccba gui=NONE
hi erubyComment ctermfg=187 ctermbg=NONE cterm=NONE guifg=#dfd2b6 guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=181 ctermbg=175 cterm=NONE guifg=#c5bda7 guibg=#d78c9c gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=181 ctermbg=116 cterm=NONE guifg=#c5bda7 guibg=#9bdac5 gui=NONE
hi javaScriptFunction ctermfg=181 ctermbg=144 cterm=NONE guifg=#c5bda7 guibg=#aca38c gui=NONE
hi javaScriptRailsFunction ctermfg=181 ctermbg=175 cterm=NONE guifg=#c5bda7 guibg=#d78c9c gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=52 ctermbg=144 cterm=NONE guifg=#312f29 guibg=#b4aa93 gui=NONE
hi yamlAnchor ctermfg=181 ctermbg=144 cterm=NONE guifg=#c5bda7 guibg=#9ea982 gui=NONE
hi yamlAlias ctermfg=181 ctermbg=144 cterm=NONE guifg=#c5bda7 guibg=#9ea982 gui=NONE
hi yamlDocumentHeader ctermfg=181 ctermbg=185 cterm=NONE guifg=#c5bda7 guibg=#ded049 gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=181 ctermbg=175 cterm=NONE guifg=#c5bda7 guibg=#d78c9c gui=NONE
hi cssColor ctermfg=181 ctermbg=116 cterm=NONE guifg=#c5bda7 guibg=#7ccfd3 gui=NONE
hi cssPseudoClassId ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssClassName ctermfg=52 ctermbg=144 cterm=NONE guifg=#312f29 guibg=#b4aa93 gui=NONE
hi cssValueLength ctermfg=52 ctermbg=155 cterm=NONE guifg=#312f29 guibg=#a3ec5a gui=NONE
hi cssCommonAttr ctermfg=181 ctermbg=175 cterm=NONE guifg=#c5bda7 guibg=#d78c9c gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

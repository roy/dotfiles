" Vim color file
" Converted from Textmate theme Dawn using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Dawn"

hi Cursor ctermfg=NONE ctermbg=0 cterm=NONE guifg=NONE guibg=#000000 gui=NONE
hi Visual ctermfg=NONE ctermbg=153 cterm=NONE guifg=NONE guibg=#bacbfb gui=NONE
hi CursorLine ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e1e1e1 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e1e1e1 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=254 cterm=NONE guifg=NONE guibg=#e1e1e1 gui=NONE
hi LineNr ctermfg=244 ctermbg=254 cterm=NONE guifg=#818181 guibg=#e1e1e1 gui=NONE
hi VertSplit ctermfg=249 ctermbg=249 cterm=NONE guifg=#b3b3b3 guibg=#b3b3b3 gui=NONE
hi MatchParen ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi StatusLine ctermfg=232 ctermbg=249 cterm=bold guifg=#080808 guibg=#b3b3b3 gui=bold
hi StatusLineNC ctermfg=232 ctermbg=249 cterm=NONE guifg=#080808 guibg=#b3b3b3 gui=NONE
hi Pmenu ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=153 cterm=NONE guifg=NONE guibg=#bacbfb gui=NONE
hi IncSearch ctermfg=NONE ctermbg=146 cterm=NONE guifg=NONE guibg=#b2bfd9 gui=NONE
hi Search ctermfg=NONE ctermbg=146 cterm=NONE guifg=NONE guibg=#b2bfd9 gui=NONE
hi Directory ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi Folded ctermfg=59 ctermbg=231 cterm=NONE guifg=#5a525f guibg=#f9f9f9 gui=NONE

hi Normal ctermfg=232 ctermbg=231 cterm=NONE guifg=#080808 guibg=#f9f9f9 gui=NONE
hi Boolean ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi Character ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5a525f guibg=NONE gui=italic
hi Conditional ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi Constant ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi Define ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi Function ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi Identifier ctermfg=125 ctermbg=NONE cterm=NONE guifg=#a71d5d guibg=NONE gui=italic
hi Keyword ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi Label ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi NonText ctermfg=145 ctermbg=231 cterm=NONE guifg=#a2a2bc guibg=#ededed gui=NONE
hi Number ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi Operator ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi PreProc ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi Special ctermfg=232 ctermbg=NONE cterm=NONE guifg=#080808 guibg=NONE gui=NONE
hi SpecialKey ctermfg=145 ctermbg=254 cterm=NONE guifg=#a2a2bc guibg=#e1e1e1 gui=NONE
hi Statement ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi StorageClass ctermfg=125 ctermbg=NONE cterm=NONE guifg=#a71d5d guibg=NONE gui=italic
hi String ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#0b6025 guibg=NONE gui=NONE
hi Tag ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi Title ctermfg=232 ctermbg=NONE cterm=bold guifg=#080808 guibg=NONE gui=bold
hi Todo ctermfg=59 ctermbg=NONE cterm=inverse,bold guifg=#5a525f guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi rubyFunction ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi rubyConstant ctermfg=54 ctermbg=NONE cterm=NONE guifg=#691c97 guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=#0b6025 guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=24 ctermbg=NONE cterm=NONE guifg=#234a97 guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=24 ctermbg=NONE cterm=NONE guifg=#234a97 guibg=NONE gui=NONE
hi rubyInclude ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=24 ctermbg=NONE cterm=NONE guifg=#234a97 guibg=NONE gui=NONE
hi rubyRegexp ctermfg=166 ctermbg=NONE cterm=NONE guifg=#cf5628 guibg=NONE gui=italic
hi rubyRegexpDelimiter ctermfg=166 ctermbg=NONE cterm=NONE guifg=#0b6025 guibg=NONE gui=NONE
hi rubyEscape ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi rubyControl ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=24 ctermbg=NONE cterm=NONE guifg=#234a97 guibg=NONE gui=NONE
hi rubyOperator ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi rubyException ctermfg=95 ctermbg=NONE cterm=NONE guifg=#794938 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=24 ctermbg=NONE cterm=NONE guifg=#234a97 guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=54 ctermbg=NONE cterm=NONE guifg=#691c97 guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=58 ctermbg=NONE cterm=NONE guifg=#693a17 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=58 ctermbg=NONE cterm=NONE guifg=#693a17 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=58 ctermbg=NONE cterm=NONE guifg=#693a17 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=58 ctermbg=NONE cterm=NONE guifg=#693a17 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#5a525f guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=58 ctermbg=NONE cterm=NONE guifg=#693a17 guibg=NONE gui=NONE
hi htmlTag ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi htmlEndTag ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi htmlTagName ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi htmlArg ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi javaScriptFunction ctermfg=125 ctermbg=NONE cterm=NONE guifg=#a71d5d guibg=NONE gui=italic
hi javaScriptRailsFunction ctermfg=58 ctermbg=NONE cterm=NONE guifg=#693a17 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi yamlAnchor ctermfg=24 ctermbg=NONE cterm=NONE guifg=#234a97 guibg=NONE gui=NONE
hi yamlAlias ctermfg=24 ctermbg=NONE cterm=NONE guifg=#234a97 guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssURL ctermfg=24 ctermbg=NONE cterm=NONE guifg=#234a97 guibg=NONE gui=NONE
hi cssFunctionName ctermfg=58 ctermbg=NONE cterm=NONE guifg=#693a17 guibg=NONE gui=NONE
hi cssColor ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi cssPseudoClassId ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi cssClassName ctermfg=130 ctermbg=NONE cterm=NONE guifg=#bf4f24 guibg=NONE gui=NONE
hi cssValueLength ctermfg=88 ctermbg=NONE cterm=bold guifg=#811f24 guibg=NONE gui=bold
hi cssCommonAttr ctermfg=130 ctermbg=NONE cterm=NONE guifg=#b4371f guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

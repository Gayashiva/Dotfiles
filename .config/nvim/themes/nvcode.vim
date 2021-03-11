hi Comment cterm=italic
" hi Comment ctermfg=blue
" hi Comment  guifg=#80a0ff ctermfg=darkred
let g:nvcode_termcolors=256

syntax on
" colorscheme nord
colorscheme nvcode
" colorscheme gruvbox
" colorscheme onedark
" colorscheme TSnazzy
" colorscheme aurora

" augroup colorscheme_change | au!
"     au ColorScheme * :hi Comment ctermfg=Blue
" augroup end

" hi Comment ctermfg=lightblue

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

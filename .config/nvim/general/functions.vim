" Random Useful Functions

" Turn spellcheck on for markdown files
augroup auto_spellcheck
  autocmd BufNewFile,BufRead *.md setlocal spell
  autocmd BufNewFile,BufRead *.tex setlocal spell
augroup END

nnoremap <f10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<cr>

" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
au BufRead,BufNewFile *.tex setlocal textwidth=120
autocmd FileType *.tex setlocal commentstring=% %s


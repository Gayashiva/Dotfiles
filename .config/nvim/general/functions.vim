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

"Jupyter Integration
" function! GetKernelFromPipenv()
"     let a:kernel = tolower(system('basename $(pipenv --venv)'))
"     " Remove control characters (most importantly newline)
"     return substitute(a:kernel, '[[:cntrl:]]', '', 'g')
" endfunction

" function! ConnectToPipenvKernel()
"     let a:kernel = GetKernelFromPipenv()
"     call IPyConnect('--kernel', a:kernel, '--no-window')
" endfunction

" function! AddFilepathToSyspath()
"     let a:filepath = expand('%:p:h')
"     call IPyRun('import sys; sys.path.append("' . a:filepath . '")')
"     echo 'Added ' . a:filepath . ' to pythons sys.path'
" endfunction

" command! -nargs=0 ConnectToPipenvKernel call ConnectToPipenvKernel()
" command! -nargs=0 RunQtConsole call jobstart("jupyter qtconsole --existing")
" command! -nargs=0 AddFilepathToSyspath call AddFilepathToSyspath()

"python with virtualenv support
" py << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

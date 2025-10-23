 let g:paste_mode = 0
 
 nnoremap <silent> <leader>i :call StartPasteMode()<CR>
 
 function! StartPasteMode()
     set paste
     let g:paste_mode = 1
     startinsert
 endfunction
 
 autocmd InsertLeave * if g:paste_mode | call StopPasteMode() | endif
 
 function! StopPasteMode()
     set nopaste
     let g:paste_mode = 0
 endfunction

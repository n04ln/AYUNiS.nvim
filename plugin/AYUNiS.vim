scriptencoding utf-8

if exists('g:loaded_AYUNiS')
    finish
endif
let g:loaded_AYUNiS = 1

let s:save_cpo = &cpo
set cpo&vim

function! s:RequireAYUNiS(host) abort
  return jobstart(['AYUNiS.nvim'], { 'rpc': v:true })
endfunction

call remote#host#Register('AYUNiS.nvim', '0', function('s:RequireAYUNiS'))
call remote#host#RegisterPlugin('AYUNiS.nvim', '0', [
\ {'type': 'function', 'name': 'AYUNiSGetNowPlaying', 'sync': 1, 'opts': {}},
\ {'type': 'function', 'name': 'AYUNiSNext', 'sync': 1, 'opts': {}},
\ {'type': 'function', 'name': 'AYUNiSPrev', 'sync': 1, 'opts': {}},
\ {'type': 'function', 'name': 'InitializeAYUNiS', 'sync': 1, 'opts': {}},
\ ])

" initialize
call InitializeAYUNiS()

" Next
nnoremap <C-s>l :call AYUNiSNext
nnoremap <C-s>h :call AYUNiSPrev

let &cpo = s:save_cpo
unlet s:save_cpo

command -bang -nargs=? QFix call qfix#QFixToggle(<bang>0)
function! qfix#QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction

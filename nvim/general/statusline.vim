set laststatus=2

let g:currentmode={
  \ 'n'  : 'NORMAL ',
  \ 'no' : 'N·Operator Pending ',
  \ 'v'  : 'VISUAL ',
  \ 'V'  : 'V·Line ',
  \ '' : 'V·Block ',
  \ 's'  : 'Select ',
  \ 'S'  : 'S·Line ',
  \ 'x19' : 'S·Block ',
  \ 'i'  : 'INSERT ',
  \ 'R'  : 'R ',
  \ 'Rv' : 'V·Replace ',
  \ 'c'  : 'Command ',
  \ 'cv' : 'Vim Ex ',
  \ 'ce' : 'Ex ',
  \ 'r'  : 'Prompt ',
  \ 'rm' : 'More ',
  \ 'r?' : 'Confirm ',
  \ '!'  : 'Shell ',
  \ 't'  : 'Terminal '
\}

function! GetBranch()
  let branch = fugitive#head()
  if branch != ''
    return branch
  else
    return "-"
endfunction

function! GetMode()
  let m = 
  return m
endfunction

set statusline=
set statusline+=%#StatusLine#
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%#PmenuSel#
set statusline+=\ %{GetBranch()}\  
set statusline+=%#StatusLine#
set statusline+=\ %n
set statusline+=\  
set statusline+=%#DiffChange#
set statusline+=\ %f

set statusline+=%=

set statusline+=%#StatusLine#
set statusline+=\ %y%R%W%m
set statusline+=\ %l/%L
set statusline+=\ 

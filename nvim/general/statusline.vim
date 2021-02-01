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
    return "\ue725 " . branch
  else
    return "-"
endfunction

function! GetMode()
  let m = 
  return m
endfunction

function! GetArrowRight()
  return "\uE0B0"
endfunction

function! GetArrowLeft()
  return "\uE0B2"
endfunction

set statusline=
set statusline+=%#StatusLine#
set statusline+=\ %{toupper(g:currentmode[mode()])}
set statusline+=%#Directory#
set statusline+=%{GetArrowLeft()} 
set statusline+=%#PmenuSel#
set statusline+=\ %{GetBranch()}\  
set statusline+=%#Directory#
set statusline+=%{GetArrowRight()}  
set statusline+=%#StatusLine#
"set statusline+=\ %n
set statusline+=\  
set statusline+=%#QuickFixLine#
set statusline+=%{GetArrowLeft()} 
set statusline+=%#DiffChange#
set statusline+=\ %t
set statusline+=%=

set statusline+=%#QuickFixLine#
set statusline+=%{GetArrowRight()}  
set statusline+=%#StatusLine#
set statusline+=\ %R%W%m
set statusline+=\ %p

set statusline+=\ 

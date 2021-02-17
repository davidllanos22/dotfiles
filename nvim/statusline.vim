set laststatus=2


function CustomInsertEnter()
  hi User1 ctermfg=Black ctermbg=Green
  hi User2 ctermfg=Green ctermbg=Black
  hi User3 ctermfg=Green ctermbg=Black
endfunction

function CustomInsertLeave()
  hi User1 ctermfg=White ctermbg=Magenta
  hi User2 ctermfg=Magenta ctermbg=Black
  hi User3 ctermfg=Magenta ctermbg=Black
endfunction

au InsertEnter * call CustomInsertEnter()
au InsertLeave * call CustomInsertLeave()
call CustomInsertLeave()

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

let LEFT_ARROW="\uE0B2"
let RIGHT_ARROW="\uE0B0"

function! GetBranch()
  let branch = fugitive#head()
  if branch != ''
    return "\ue725 " . branch
  else
    return "-"
endfunction

set statusline=
set statusline+=%1*
set statusline+=\ %{toupper(g:currentmode[mode()])}
  
set statusline+=%2*
set statusline+=%{RIGHT_ARROW} 
set statusline+=%3*
set statusline+=\ %R%W%m
set statusline+=\ %t
set statusline+=%=

"set statusline+=%4*
"set statusline+=%{LEFT_ARROW} 
"set statusline+=%5*
"set statusline+=\ %{GetBranch()}\  

" Default statusline
" set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

set laststatus=2

hi User3 guibg=#3E5380 guifg=#8fbfdc
hi User4 guibg=#3E5380 guifg=#B9F27C
hi User5 guibg=#B9F27C guifg=black

" TODO: Cambiar color según git status

function CustomInsertEnter()
  hi User1 guifg=black guibg=#d7afff
  hi User2 guibg=#3E5380 guifg=#d7afff
endfunction

function CustomInsertLeave()
  hi User1 guifg=black guibg=#8fbfdc
  hi User2 guibg=#3E5380 guifg=#8fbfdc
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

let PIZZA="\uE22D"
let LEFT_ARROW="\uE0B2"
let RIGHT_ARROW="\uE0B0"
let LEFT_LINE_ARROW="\uE0B3"
let RIGHT_LINE_ARROW="\uE0B1"
let LEFT_CIRCLE="\uE0B6"
let RIGHT_CIRCLE="\uE0B4"

function! GetBranch()
  let branch = fugitive#head()
  if branch != ''
    return "\ue725 " . branch
  else
    return "-"
endfunction

set statusline=
set statusline+=%1*
set statusline+=\ %{PIZZA} 
set statusline+=\ %{toupper(g:currentmode[mode()])}
  
set statusline+=%2*
set statusline+=%{RIGHT_ARROW} 
set statusline+=%3*
set statusline+=\ %R%W%m
set statusline+=\ %t
set statusline+=%=


set statusline+=%4*
set statusline+=%{LEFT_ARROW} 
set statusline+=%5*
set statusline+=\ %{GetBranch()}\  

" Default statusline
" set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

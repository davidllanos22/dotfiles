let $TMP="/tmp"

" coc settings
" let g:coc_global_extensions = [ 'coc-tsserver' ]

" NERDTree settings
autocmd vimenter * NERDTree

let NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Goyo and limelight settings

function CustomGoyoEnter()
  Limelight
  "set laststatus=2
  "AirlineToggle 
  "set statusline="test words"
endfunction

function CustomGoyoLeave()
  Limelight!
endfunction

autocmd! User GoyoEnter call CustomGoyoEnter()
autocmd! User GoyoLeave call CustomGoyoLeave()

" Theme settings

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
"colorscheme dracula
"colorscheme gruvbox

syntax enable                           " Enables syntax highlighing
set rnu                                 " Show relative numbers
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Display long lines as just one line
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=2                           " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=0                       " Hide tablines 
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set nohlsearch                          " Disable search highlighting
set colorcolumn=80
set laststatus=2

nnoremap <C-t> :tabnew<CR> 
nnoremap <Tab> :bnext<CR> 
nnoremap <S-Tab> :bprevious<CR> 
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-o> :Buffers<CR>
nnoremap <C-f> :Rg! 
nnoremap <C-Enter> :call GuiWindowFullScreen(!g:GuiWindowFullScreen)<CR>
nnoremap <F5> :!make<CR>
let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_keymap_next   = '<F11>'

" au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

let g:word_count="<unknown>"
function WordCount()
	return g:word_count
endfunction

function UpdateWordCount()
	let lnum = 1
	let n = 0
	while lnum <= line('$')
		let n = n + len(split(getline(lnum)))
		let lnum = lnum + 1
	endwhile
	let g:word_count = n
endfunction

" Update the count when cursor is idle in command or insert mode.
" Update when idle for 1000 msec (default is 4000 msec).

set updatetime=1000
augroup WordCounter
	au! CursorHold,CursorHoldI * call UpdateWordCount()
augroup END

"set statusline+=\ %{WordCount()}\ words
" You can't stop me
cmap w!! w !sudo tee %

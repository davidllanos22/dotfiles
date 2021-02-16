call plug#begin('/mnt/c/dotfiles/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'voldikss/vim-floaterm'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'

" Themes
Plug 'ghifarit53/tokyonight-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'ntk148v/vim-horizon'
Plug 'sainnhe/sonokai'

call plug#end()

source /mnt/c/dotfiles/nvim/general.vim
source /mnt/c/dotfiles/nvim/statusline.vim


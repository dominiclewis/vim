" Vundle Begin
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end
" All of your Plugins must be added before the following line
Plugin 'joshdick/onedark.vim'  
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
" Map Nerdtree toggle to F7
nmap <F6> :NERDTreeToggle<CR>
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
nmap <F4> :FZF ~/<CR>
Plugin 'w0rp/ale'
Plugin 'majutsushi/tagbar'
" Map Tagbar toggle to F8
nmap <F5> :TagbarToggle<CR>
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" Vundle end

set number "Enable line numbers
set backspace=indent,eol,start " backspace over everything in insert mode
set laststatus=2 "Possible lightline fix
syntax on
colorscheme onedark 
"ondark 24 bit stuff below, remove if terminal doesn't support onedark 
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


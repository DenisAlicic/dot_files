runtime! debian.vim
set shell=/bin/bash
set nocompatible              " be iMproved, required
set guicursor=
filetype off                  " required
if has("syntax")
  syntax on
endif
set t_Co=256
set background=dark

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Syntax check:Ins
Plugin 'scrooloose/syntastic'
"Autoclose brackets
Plugin 'cohama/lexima.vim'
"Status line beauty
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Python autocomplete (jedi-vim)"
Plugin 'davidhalter/jedi-vim'
" Plugin for YCM 
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
let g:ycm_confirm_extra_conf = 0
let g:ycm_keep_logfiles = 1
let g:ycm_log_level = 'debug'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_always_populate_location_list = 1
let g:ycm_path_to_python_interpreter = "/usr/bin/python"
"let g:ycm_global_ycm_extra_conf = "~/Documents/.ycm_extra_conf.py""
Plugin 'scrooloose/nerdtree'                " NERDTree
Plugin 'flazz/vim-colorschemes'             " lots of colorschemes
Plugin 'chriskempson/base16-vim'            " Lots of base16 themes
Plugin 'justinmk/vim-syntax-extra'          " Support for bison, flex and c
Plugin 'w0ng/vim-hybrid'                    " Hybrid theme
Plugin 'colepeters/spacemacs-theme.vim'     " dark theme
Plugin 'tyrannicaltoucan/vim-deep-space'    " dark theme
Plugin 'mkarmona/colorsbox'
Plugin 'liuchengxu/space-vim-dark'          " spacemacs theme
Plugin 'KeitaNakamura/neodark.vim'          " onedark inspired dark theme
Plugin 'jdkanani/vim-material-theme'        " material style onedark inspired theme
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'                  " handles conflicts betweens snippets and YCM
Plugin 'hdima/python-syntax' 
set completeopt-=preview
" Trigger configuration. Do not use <tab> if you use 'Valloric/YouCompleteMe'.
let g:UltiSnipsExpandTrigger="<Insert>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
let g:neodark#background='gray'

let g:airline_theme="behelit" 

colorscheme 256-grayvim 
" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.


" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set smartindent     " Automatically indent in some cases 
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set number      " Show line number "
set formatoptions=tcq 

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set laststatus=2




"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
let g:airline_section_c = '%{strftime("%c")}'
let g:airline_section_d = ''
"let g:airline_section_warning = '%{SyntasticStatuslineFlag()}' 
set ttimeoutlen=50 
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_stl_format = '[%E{E:%e(#%fe)}%B{,}%W{W:%w(#%fw)}]'
"let g:airline_theme='light'
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_powerline_fonts = 1
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif


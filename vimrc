set nocompatible              " be iMproved, required
filetype off                  " required

set tabpagemax=100
nnoremap gr gT

au BufNewFile,BufRead *rtorrent.rc* set filetype=rtorrent 

" tabpagemax

set backupdir=~/.vim/backup//
set directory=~/.vim/backup//

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'joanrivera/vim-zimwiki-syntax'

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Color scheme
Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1


" Ansible
Plugin 'pearofducks/ansible-vim'

let g:ansible_unindent_after_newline = 1

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
" colorscheme gruvbox
colorscheme dracula
set background=dark
" set number
call plug#begin('~/.vim/bundle')

" It shows the history of commits under the cursor in popup window.
Plug 'rhysd/git-messenger.vim'
call plug#end()            " required

" Header such as 'Commit:', 'Author:'
hi gitmessengerHeader term=None guifg=#88b8f6 ctermfg=111

" Commit hash at 'Commit:' header
hi gitmessengerHash term=None guifg=#f0eaaa ctermfg=229

" History number at 'History:' header
hi gitmessengerHistory term=None guifg=#fd8489 ctermfg=210

" Normal color. This color is the most important
hi gitmessengerPopupNormal term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234

" Color of 'end of buffer'. To hide '~' in popup window, I recommend to use the same background color as gitmessengerPopupNormal.
hi gitmessengerEndOfBuffer term=None guifg=#333333 guibg=#333333 ctermfg=234 ctermbg=234



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

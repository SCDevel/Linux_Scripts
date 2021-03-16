set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'yegappan/taglist'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'wincent/command-t'
Plugin 'vim-syntastic/syntastic'
Plugin 'preservim/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'
Plugin 'LucHermitte/lh-tags'
Plugin 'LucHermitte/lh-dev'
Plugin 'LucHermitte/lh-style'
Plugin 'LucHermitte/vim-refactor'

" theme
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

:set number
:set tabstop=4
:set shiftwidth=4
:set expandtab

" Auto Complete Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O<TAB>
" inoremap {;<CR> {<CR>};<ESC>O

nmap <F5> :tabp<CR>
nmap <F6> :tabn<CR>

nmap <F8> :TagbarToggle<CR>

let g:ycm_key_invoke_completion = ''
let g:ycm_key_list_stop_completion = ['<S-Tab>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_select_completion = ['<Down>']

let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set background=dark
autocmd vimenter * ++nested colorscheme gruvbox

call pathogen#infect()
syntax on
filetype plugin indent on

set number
set ts=4
set autoindent
set cindent
set smartindent
set ai!
set showmatch
"set incsearch
set sw=4
set listchars=tab:>-,trail:-

map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR> 

let NERDTreeIgnore=['\.o','\~$']
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 						Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_include_dirs=[
			\"/home/linux/wkdir/src/connect/src/include",
			\"/home/linux/wkdir/src/connect/src"]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  					 	智能提示
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType="context"


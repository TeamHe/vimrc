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
set ruler
set listchars=tab:>-,trail:-
"set cursorline "当前行有下划线"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 							NERDTREE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
nnoremap <silent> <F4> :TlistToggle<CR> 

let NERDTreeIgnore=['\.o','\~$','\.lo']

"let NERDTreeSortOrder=['//$','/.cpp$','/.c$', '/.h$', '/.py$', '/.lua$', '*']
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
			\"/usr/include/glib-2.0/",
			\"/usr/include/dbus-1.0/",
			\"/usr/lib/i386-linux-gnu/dbus-1.0/include/",
			\"/home/linux/wkdir/src/connect/include",
			\"/home/linux/wkdir/src/connect/src/",
			\"/home/linux/wkdir/src/connect/src/include",
			\"/home/linux/wkdir/src/connect/src/control/include",
			\"/home/linux/wkdir/src/connect/src/pollutant/include/"]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  					 	智能提示
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType="context"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 						taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Show_One_File=1 			
let Tlist_Use_Right_Window=1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 						ctags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F8> :!ctags -R --fields=+lS <CR>
noremap <F7> :!cscope -Rbq<CR> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 						ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/tmp/*,*.o,*.lo     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \}


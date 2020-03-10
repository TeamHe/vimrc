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

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_include_dirs=[
			\"/usr/include/glib-2.0/",
			\"/usr/include/dbus-1.0/",
			\"/usr/local/include/",
			\"/usr/local/include/open62541/",
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
noremap <F7> :!ctags -R --fields=+lS <CR>
noremap <F8> :!cscope -Rb -l/usr/local/include -l/usr/include<CR> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 						ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*/tmp/*,*.o,*.lo     		" MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 						Source Explor (SrcExpl)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" // The switch of the Source Explorer 
"nmap <F8> :SrcExplToggle<CR> 
"
"" // Set the height of Source Explorer window 
"let g:SrcExpl_winHeight = 8 
"
"" // Set 100 ms for refreshing the Source Explorer 
"let g:SrcExpl_refreshTime = 100 
"
"" // Set "Enter" key to jump into the exact definition context 
"let g:SrcExpl_jumpKey = "<ENTER>" 
"
"" // Set "Space" key for back from the definition context 
"let g:SrcExpl_gobackKey = "<SPACE>" 
"
"" // In order to avoid conflicts, the Source Explorer should know what plugins except
"" // itself are using buffers. And you need add their buffer names into below list
"" // according to the command ":buffers!"
"let g:SrcExpl_pluginList = [
"        \ "__Tag_List__",
"        \ "_NERD_tree_",
"        \ "Source_Explorer"
"    \ ]
"
"" // The color schemes used by Source Explorer. There are five color schemes
"" // supported for now - Red, Cyan, Green, Yellow and Magenta. Source Explorer
"" // will pick up one of them randomly when initialization.
"let g:SrcExpl_colorSchemeList = [
"        \ "Red",
"        \ "Cyan",
"        \ "Green",
"        \ "Yellow",
"        \ "Magenta"
"    \ ]
"
"" // Enable/Disable the local definition searching, and note that this is not 
"" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
"" // It only searches for a match with the keyword according to command 'gd' 
"let g:SrcExpl_searchLocalDef = 1 
"
"" // Workaround for Vim bug @https://goo.gl/TLPK4K as any plugins using autocmd for
"" // BufReadPre might have conflicts with Source Explorer. e.g. YCM, Syntastic etc.
"let g:SrcExpl_nestedAutoCmd = 1
"
"" // Do not let the Source Explorer update the tags file when opening 
"let g:SrcExpl_isUpdateTags = 0 
"
"" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
"" // create/update the tags file 
"let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 
"
"" // Set "<F12>" key for updating the tags file artificially 
"let g:SrcExpl_updateTagsKey = "<F12>" 
"
"" // Set "<F3>" key for displaying the previous definition in the jump list 
"let g:SrcExpl_prevDefKey = "<F3>" 
"
"" // Set "<F4>" key for displaying the next definition in the jump list 
"let g:SrcExpl_nextDefKey = "<F4>" 
"
nmap <C-n> :cnext<CR>
nmap <C-p> :cprev<CR>


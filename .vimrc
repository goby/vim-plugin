syntax on

set backspace=indent,eol,start

set nocompatible
nnoremap <silent> <F5> :NERDTreeToggle<CR>
nnoremap <silent> <F8> :TlistToggle<CR>
map <leader>r :NERDTreeFind<CR>

let Tlist_Use_Right_Window = 1
set st=4
set ts=4
set et
set sw=4
set formatoptions-=c formatoptions-=r formatoptions-=o
set nu

" Vundle                                                                           
filetype off                                                                       
set rtp+=~/.vim/bundle/Vundle.vim                                                  
call vundle#begin()                                                                
" Any plugin here                                                                  
Plugin 'scrooloose/syntastic'                                                      
Plugin 'rust-lang/rust.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'uarun/vim-protobuf'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'nikvdp/ejs-syntax'
Plugin 'digitaltoad/vim-pug'
"Deoplete start
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'zchee/deoplete-go'
"end
call vundle#end()                                                                  
filetype plugin indent on  

" Syntastic Settings                                                               
set statusline+=%#warningmsg#                                                      
set statusline+=%{SyntasticStatuslineFlag()}                                       
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1                                    
let g:syntastic_auto_loc_list = 1                                               
let g:syntastic_check_on_open = 0                                               
let g:syntastic_check_on_wq = 0                                                 
let g:syntastic_c_remove_include_errors = 1                                     
let g:syntastic_python_pylint_post_args = '--msg-template="{path}:{line}:{column}:{C}: [{symbol} {msg_id}] {msg}" --ignored-classes=Config --errors-only'
let b:syntastic_cpp_cflags = ' -std=c++11' 

"let g:clang_debug=1
"let g:clang_library_path="/usr/local/lib"

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:scratch_autohide = 1
"let g:miniBufExplSplitBelow = 1

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"add rust toml
au BufNewFile,BufRead *.toml set filetype=cfg
au BufNewFile,BufRead *.cpp,*.cc,*.hh,*.h set syntax=cpp11

au FileType yaml set ts=2
au FileType javascript set ts=2

if exists('+colorcolumn')
  highlight ColorColumn ctermbg=darkblue
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
set maxmempattern=102400

filetype plugin indent on
set expandtab
set cindent shiftwidth=4
syntax enable
set incsearch
set smartcase
set scrolloff=2
colorscheme ted
set matchpairs+=<:>

" make gf goto file under cursor
set path+=**

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"set equalprg=clang-format\ -style=file
"#command F :%!clang-format %

"format the complete file using ~/.clang-format
map <F1> mz:%!clang-format %<CR>'z

noremap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR><Tab>
noremap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
noremap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR><Tab>

noremap <F4> :cs find c <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <F5> :cs find d <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <F6> :cs find e <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <F7> :cs find f <C-R>=expand("<cfile>")<CR><CR><Tab>
noremap <F8> :cs find g <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <F9> :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
noremap <F10> :cs find s <C-R>=expand("<cword>")<CR><CR><Tab>
noremap <F11> :cs find t <C-R>=expand("<cword>")<CR><CR><Tab>

" Disable verbose to silence warnings about duplicate databases
set nocscopeverbose
silent cscope add ~/ted/git/.cscope.out
set cscopeverbose
" cscope database is relative to the cscope.out file
set csre


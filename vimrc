"---------------------
" normal
"---------------------
" 编码方式
set fencs=utf-8,cp936,sjis
set enc=utf-8

" 显示行号
set number
" 设置自动对齐
set autoindent
set cindent
" 当前行和列高亮
set cursorline
set cursorcolumn
" 底部状态栏
set laststatus=2
set statusline=%<%f\ %h%m%r%=[TYPE=%Y]\ [FORMAT=%{&ff}]\ [ENC=%{&enc}]\ [FENC=%{&fenc}]\ %-14.(%l,%c%V%)\ %P
" 高亮搜索
set incsearch
set hlsearch
nnoremap <silent> <esc><esc> :noh<cr>
" 设置搜索时忽略大小写
set ignorecase
" invisible character setting
" unicode for \u25b8 for `▸', \u00ac for `¬'
" set listchars=tab:▸\ ,eol:¬
set listchars=tab:▸\ 
set list

" 设置tab宽度
set tabstop=2
" 设置自动对齐空格数
set shiftwidth=2
" 设置退格键时可以删除4个空格
set smarttab
set softtabstop=2
" 将tab键自动转换为空格
set expandtab

" 设置在vim中可以使用鼠标
set mouse=a
 
" This means that you can have unwritten changes to a file and open a new file
" using :e, without being forced to write or undo your changes first.
set hidden

" show command menu, work great with snapmate-snippets
set wildmenu

" 设置取消备份 禁止临时文件的生成
set nobackup
set noswapfile

" 开启语法高亮功能
syntax enable
syntax on
" 指定配色方案为256色
"set t_Co=256
"color seoul256
set background=dark
colorscheme solarized

" 检测文件类型
filetype on
" 允许插件
filetype plugin on
" 启动智能补全
filetype plugin indent on

"-----------------
" extension
"-----------------
" 快捷键
" F3 search & replace current word under cursor
nnoremap <F3> /<c-r><c-w><cr>
" F4 toggle for paste, Insert Mode
set pastetoggle=<F4>
" toggle for copy & paste, Normal Mode
nnoremap <silent> <F4> :set nu!<CR>:set list!<CR>
" F5 toggle for ctags
nnoremap <f5> :!ctags -R<cr>
map <C-n> :NERDTreeToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>
let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" edit mapping
let mapleader=','
map <leader>gr :topleft :split config/routes.rb<cr>
map <leader>gg :topleft 100 :split Gemfile<cr>
map <leader>gs :topleft :split db/schema.rb<cr>
inoremap <leader>rm :Emodel 
nnoremap <leader>rm :Emodel 
inoremap <leader>rc :Econtroller 
nnoremap <leader>rc :Econtroller 
inoremap <leader>rv :Eview 
nnoremap <leader>rv :Eview 
inoremap <leader>rh :Ehelper
nnoremap <leader>rh :Ehelper 
inoremap <leader>rs :Espec 
nnoremap <leader>rs :Espec
inoremap <leader>= <%=  %><esc>hhi
inoremap <leader>- <%  %><esc>hhi
nnoremap <leader>= i<%=  %><esc>hhi
nnoremap <leader>- i<%  %><esc>hhi

"复制到系统剪贴板
"vmap "+y :w !pbcopy<CR><CR>
vmap <leader>yy :w !pbcopy<CR><CR>
  
noremap <leader>h ^
noremap <leader>l $
    
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Some helpers to edit mode (http://vimcasts.org/e/14)
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
" tab键的自动完成现在会忽略这些
set wildignore+=tmp/*,*/tmp/*,*.so,*.swp,*.zip,*.o,*.obj,*.bak,*.exe,.git

" tabular
noremap <leader>a,  :Tabularize /,<cr>
noremap <leader>a#  :Tabularize /#<cr>
noremap <leader>a=  :Tabularize /=<cr>
noremap <leader>a== :Tabularize /==<cr>
noremap <leader>a:  :Tabularize /:<cr>
noremap <leader>a\| :Tabularize /\|<cr>
noremap <leader>a>  :Tabularize /=><cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" rename current file
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>

" NeoBundle and bundles config
source ~/.vim/neobundles.vim

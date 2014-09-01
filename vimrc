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
set t_Co=256
color seoul256

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
" search & replace current word under cursor
nnoremap <F3> /<c-r><c-w><cr>
" F4 toggle for paste, Insert Mode
set pastetoggle=<F4>
" toggle for copy & paste, Normal Mode
nnoremap <silent> <F4> :set nu!<CR>:set list!<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <F7> :NERDTreeToggle<CR>
let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>

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

" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" NeoBundle and bundles config
source ~/.vim/neobundles.vim

## Require
#### exuberant-ctags
ubuntu: sudo apt-get install exuberant-ctags
mac: brew install ctags
#### ack
ubuntu: sudo apt-get install ack-grep
mac: brew install ack

## One Line Installation
```
bash <(wget -O- https://raw.githubusercontent.com/caok/myvim/master/install.sh)
```

## Usage
### update vim plugins

* `:NeoBundleUpdate!`  - update vim plugins

### File explorer

* `<F3>`             - use word under cursor as pattern to find all matching in the current file
* `<F4>`             - toggle line number in normal mode, toggle paste mode in insert mode
* `<F5>`             - toggle ctags -R
* `<F7>`             - toggle NERDTree window
* `<F8>`             - toggle tagbar window
* `<C-p>`            - fuzzy matching, features like Ctrl-p in textMate
* `:Ggrep <pattern>` - for searching pattern in all files under git managed
* `:Ack <pattern> <directory>` - for searching pattern in all files under a directory

### Formatting

* `<F4>`      - toggle paste mode (insert mode)
* `,cc`       - comment out
* `,c<SPACE>` - reverting comment out
* `<c-y>,`    - [Emmet](https://github.com/emmetio/emmet) (formerly Zen Coding)

* `,a=`  - spilt and align line code by `=`
* `,a>`  - spilt and align line code by `=>`
* `,a==` - spilt and align line code by `==`
* `,a|`  - spilt and align line code by `|`
* `:Tab /{pattern}` - spilt and align line code by {pattern}, see :h Tabular

* `ysiw"` - Wrap a word with double quotation, `wor*d` => `"wor*d"`, more `:h surround`
* `yss-`  - `wor*d` => `<% wor*d -%>`
* `yss=`  - `wor*d` => `<%= wor*d %>`

### Others

* `,yy`       - copy content into system clipboard
* `zR`        - 打开所有折叠  
* `zM`        - 关闭所有折叠  
* `za`        - 当光标在关闭折叠上时，打开之。在打开折叠上时，关闭之

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
========
#### update vim plugins

* `:NeoBundleUpdate!`  - update vim plugins

## File explorer

* `<F3>`             - use word under cursor as pattern to find all matching in the current file
* `<F4>`             - toggle line number in normal mode, toggle paste mode in insert mode
* `<F7>`             - toggle NERDTree window
* `<F8>`             - toggle tagbar window
* `<C-p>`            - fuzzy matching, features like Ctrl-p in textMate
* `:Ggrep <pattern>` - for searching pattern in all files under git managed, `]q` open next matching, `[q` open previous matching, `[Q`, `]Q` for the first and last matching
* `:Ack <pattern> <directory>` - for searching pattern in all files under a directory

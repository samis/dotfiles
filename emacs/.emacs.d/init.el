(add-to-list 'load-path "~/.emacs.d/lisp")
(require 'init-loader)
(setq my-packages '(el-get monokai-theme markdown-mode magit undo-tree unicode-fonts spaceline info+ linkd yaml-mode geiser matrix-client sr-speedbar org-mode csv-mode better-defaults pos-tip company-mode company-quickhelp smex ido-ubiquitous diminish))
(init-loader-load "~/.emacs.d/init")

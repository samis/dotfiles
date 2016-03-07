(load-file "~/.emacs.d/lisp/init-loader.el")
(setq my-packages '(el-get
                    better-defaults
                    monokai-theme
                    markdown-mode
                    magit
                    undo-tree
                    unicode-fonts
                    spaceline
                    info+
                    linkd
                    yaml-mode
                    geiser
                    matrix-client
                    sr-speedbar
                    org-mode
                    csv-mode
                    pos-tip
                    company-mode
                    company-quickhelp
                    smex
                    ido-ubiquitous
                    aggressive-indent-mode
                    diminish
                    let-alist
                    imenu-list
                    window-purpose))
(init-loader-load "~/.emacs.d/init")

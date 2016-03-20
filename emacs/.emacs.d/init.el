;;; init.el
(defvar endless/init.org-message-depth 3
  "What depth of init.org headers to message at startup.")

(with-temp-buffer
  (insert-file "~/.emacs.d/init.org")
  (goto-char (point-min))
  (search-forward "\n* init.el")
  (while (not (eobp))
    (forward-line 1)
    (cond
     ;; Report Headers
     ((looking-at
       (format "\\*\\{2,%s\\} +.*$" 
               endless/init.org-message-depth))
      (message "%s" (match-string 0)))
     ;; Evaluate Code Blocks
     ((looking-at "^#\\+BEGIN_SRC +emacs-lisp *$")
      (let ((l (match-end 0)))
        (search-forward "\n#+END_SRC")
        (eval-region l (match-beginning 0))))
     ;; Finish on the next level-1 header
     ((looking-at "^\\* ")
      (goto-char (point-max))))))
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
                    window-purpose
                    sr-speedbar
                    org-mode
                    csv-mode 
                    company-mode
                    smex
                    ido-ubiquitous
                    flx-ido
                    aggressive-indent-mode
                    diminish
                    let-alist
                    imenu-list
                    projectile
                    which-key))
(init-loader-load "~/.emacs.d/init/")

(ergoemacs-theme custom ()
  "My custom Ergoemacs theme mostly based around the basic CUA/Windows shortcuts"
  :components '(copy
                dired-tab
                dired-to-wdired
                execute
                fixed-newline
                help
                kill-line
                misc
                move-bracket
                move-buffer
                move-char
                move-line
                move-page
                move-paragraph
                move-word
                search
                select-items
                switch
                text-transform
                ergoemacs-remaps
                standard-vars)
  :optional-on '(tab-indents-region
                 backspace-del-seq
                 backspace-is-back
                 fixed-bold-italic
                 standard-fixed
                 quit
                 save-options-on-exit
                 ;; Reverse menu-bar order
                 menu-bar-help
                 menu-bar-languages
                 menu-bar-view
                 menu-bar-search
                 menu-bar-edit
                 menu-bar-file
                 )
  :optional-off '(move-sexp)
  :options-menu '(("Standard Keys" (standard-fixed fixed-bold-italic quit))
                  ("Keys during Key Sequence" (backspace-del-seq))
                  ("Disputed Keys" (move-sexp))
                  ("Menus" (menu-bar-file menu-bar-edit menu-bar-search menu-bar-view menu-bar-languages menu-bar-help))))

(ergoemacs-theme custom ()
  "My custom Ergoemacs theme mostly based around the basic CUA/Windows shortcuts"
  :components '(copy
                dired-tab
                dired-to-wdired
                execute
                fixed-newline
                help
                kill-line
                move-bracket
                move-buffer
                move-char
                move-line
                move-word
                switch
                ergoemacs-remaps
                standard-vars)
  :optional-on '(tab-indents-region
                 fixed-bold-italic
                 standard-fixed
                 ;; Reverse menu-bar order
                 menu-bar-help
                 menu-bar-languages
                 menu-bar-view
                 menu-bar-search
                 menu-bar-edit
                 menu-bar-file
                 )
  :optional-off '(move-sexp)
  :options-menu '(("Standard Keys" (standard-fixed fixed-bold-italic))
                  ("Menus" (menu-bar-file menu-bar-edit menu-bar-search menu-bar-view menu-bar-languages menu-bar-help))))

(ergoemacs-theme custom ()
  "My custom Ergoemacs theme mostly based around the basic CUA/Windows shortcuts"
  :components '(move-bracket
		standard-fixed
                ergoemacs-remaps
                standard-vars)
  :optional-on '(tab-indents-region
                 fixed-bold-italic
                 ;; Reverse menu-bar order
                 menu-bar-help
                 menu-bar-languages
                 menu-bar-view
                 menu-bar-search
                 menu-bar-edit
                 menu-bar-file))

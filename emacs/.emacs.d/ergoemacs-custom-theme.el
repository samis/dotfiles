;;; ergoemacs-custom-theme.el --- My custom theme for ergoemacs-mode.

;;; Commentary:
;; 

;;; Code:

(ergoemacs-theme custom ()
  "My custom Ergoemacs theme mostly based around the basic CUA/Windows shortcuts"
  :components '(move-bracket standard-fixed ergoemacs-remaps standard-vars)
  ; For menu bars, the order is reversed.
  :optional-on '(tab-indents-region fixed-bold-italic menu-bar-help menu-bar-languages menu-bar-view menu-bar-search
		 menu-bar-edit menu-bar-file))

(provide 'ergoemacs-custom-theme)

;;; ergoemacs-custom-theme.el ends here

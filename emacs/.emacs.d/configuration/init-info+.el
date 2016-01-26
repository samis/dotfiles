(eval-after-load "info" '(require 'info+))
(setq Info-fontify-quotations-flag t)
(setq Info-fontify-angle-bracketed-flag t)
(setq Info-fontify-single-quote-flag’ t)
(setq special-display-buffer-names
      (cons '("*info*" (background-color . "LightSteelBlue"))
	    special-display-buffer-names))

(eval-after-load "info" '(require 'info+))
(eval-after-load "info+" '(progn
			    (define-key Info-mode-map [mouse-4]         'mwheel-scroll)
			    (define-key Info-mode-map [mouse-5]         'mwheel-scroll)))
(setq Info-fontify-quotations-flag t)
(setq Info-fontify-angle-bracketed-flag t)
(setq Info-fontify-single-quote-flag’ t)

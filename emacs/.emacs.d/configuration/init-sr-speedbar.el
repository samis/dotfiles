(setq sr-speedbar-width 40)
(setq sr-speedbar-default-width 40)
(setq sr-speedbar-max-width 40)
(setq sr-speedbar-skip-other-window-p t)
(setq sr-speedbar-right-side nil)
(require 'sr-speedbar)
(defun ad-advised-definition-p (definition)
  "Return non-nil if DEFINITION was generated from advice information."
  (if (or (ad-lambda-p definition)
          (macrop definition)
          (ad-compiled-p definition))
      (let ((docstring (ad-docstring definition)))
        (and (stringp docstring)
             (get-text-property 0 'dynamic-docstring-function docstring)))))
(add-hook 'after-init-hook 'sr-speedbar-open)

(setq vc-follow-symlinks nil)
(add-hook 'after-init-hook 'packages-init-hook)
(defun packages-init-hook ()
  (setq ergoemacs-theme "custom")
  (setq ergoemacs-keyboard-layout "gb")
  (require 'ergoemacs-mode)
  (load-file "~/.emacs.d/ergoemacs-custom-theme.el")
  (ergoemacs-mode 1)
  (load-theme 'monokai t)
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("0fb6369323495c40b31820ec59167ac4c40773c3b952c264dd8651a3b704f6b5" default)))
 '(global-linum-mode t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/"))))
 '(scroll-error-top-bottom nil)
 '(set-mark-command-repeat-pop nil)
 '(shift-select-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:weight normal :height 98 :width extra-condensed :foundry "unknown" :family "Input Mono Compressed" :slant normal))))
 '(variable-pitch ((t (:family "Input Sans Compressed")))))

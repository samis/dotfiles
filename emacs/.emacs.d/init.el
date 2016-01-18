(setq vc-follow-symlinks nil)
(add-hook 'after-init-hook 'packages-init-hook)
(defun packages-init-hook ()
  (require 'ergoemacs-mode)
  (ergoemacs-theme lvl5 ()
  "CUA-mode style"
  (global-set-key (kbd "C-c <ergoemacs-timeout>") 'ergoemacs-copy-line-or-region)
  (global-set-key (kbd "<C-insert>") 'ergoemacs-copy-line-or-region)
  (global-set-key (kbd "C-S-v") 'ergoemacs-paste-cycle)
  
  (global-set-key (kbd "<S-insert>") 'ergoemacs-paste)
  (global-set-key (kbd "C-v") 'ergoemacs-paste))
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
 '(ergoemacs-ctl-c-or-ctl-x-delay 0.2)
 '(ergoemacs-handle-ctl-c-or-ctl-x (quote both))
 '(ergoemacs-ini-mode t)
 '(ergoemacs-keyboard-layout "gb")
 '(ergoemacs-mode t)
 '(ergoemacs-smart-paste nil)
 '(ergoemacs-theme "standard")
 '(ergoemacs-theme-options nil)
 '(ergoemacs-use-menus t)
 '(global-linum-mode t)
 '(initial-scratch-message
   ";; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

")
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

(setq vc-follow-symlinks nil)
(tool-bar-mode -1)
(add-hook 'after-init-hook 'packages-init-hook)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(defun packages-init-hook ()
  (load-theme 'monokai t)
  (setq ergoemacs-theme "CUA")
  (setq ergoemacs-keyboard-layout "gb")
  (require 'ergoemacs-mode)
  (load-file "~/.emacs.d/ergoemacs-custom-theme.el")
  (ergoemacs-mode 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(global-linum-mode t)
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

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(setq el-get-user-package-directory "~/.emacs.d/configuration")
(set-face-attribute 'default nil :family "Input Mono Compressed" :height 98)
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq my-packages '(el-get monokai-theme markdown-mode magit undo-tree unicode-fonts spaceline info+ linkd))
(setq el-get-packages
      (append my-packages
              (mapcar #'el-get-source-name el-get-sources)))
(el-get 'sync el-get-packages)
(setq vc-follow-symlinks t)
(tool-bar-mode -1)
(global-linum-mode t)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(setq custom-file "~/.emacs.d/configuration/init-customize.el")
(load custom-file)
(cua-mode 1)
(global-set-key (kbd "C-f") 'isearch-forward) ; Find. was forward-char
(global-set-key (kbd "C-o") 'find-file)        ; Open. was open-line
(global-set-key (kbd "C-s") 'save-buffer)  ; Save. was isearch-forward
(global-set-key (kbd "C-w") 'kill-this-buffer)  ; Close. was kill-region
(global-set-key (kbd "C-z") 'undo)         ; Undo. was suspend-frame

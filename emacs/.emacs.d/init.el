(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")
(setq el-get-user-package-directory "~/.emacs.d/configuration")
(set-face-attribute 'default nil :family "Input Mono Compressed" :height 98)
(defun set-emoji-font (frame)
"Adjust the font settings of FRAME so Emacs can display emoji properly."
  (set-fontset-font t 'symbol (font-spec :family "Symbola") frame ))
(set-emoji-font nil)
(add-hook 'after-make-frame-functions 'set-emoji-font)
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq my-packages '(el-get monokai-theme markdown-mode magit ergoemacs-mode undo-tree unicode-fonts spaceline info+ linkd yaml-mode geiser matrix-client))
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
(cua-mode 1)
(global-undo-tree-mode 1)
(setq custom-file "~/.emacs.d/configuration/init-customize.el")
(load custom-file)
(require 'guix-init nil t)
(global-guix-prettify-mode)

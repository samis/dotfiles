(require 'diminish)
(eval-after-load "org-indent"
  '(diminish 'org-indent-mode))
(diminish 'visual-line-mode)
(diminish 'undo-tree-mode)
(diminish 'auto-revert-mode)
(with-eval-after-load 'server
  (setq minor-mode-alist
        (delete '(server-buffer-clients " Server") minor-mode-alist)))

(with-eval-after-load 'with-editor-mode
  (diminish 'with-editor-mode))
(with-eval-after-load 'abbrev
  (diminish 'abbrev-mode))

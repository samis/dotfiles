(require 'diminish)
(eval-after-load "org-indent"
  '(diminish 'org-indent-mode))
(diminish 'visual-line-mode)
(diminish 'undo-tree-mode)
(diminish 'auto-revert-mode)
(with-eval-after-load 'server
  (setq minor-mode-alist
        (delete '(server-buffer-clients " Server") minor-mode-alist)))

(eval-after-load "server"
  (diminish 'server-mode))

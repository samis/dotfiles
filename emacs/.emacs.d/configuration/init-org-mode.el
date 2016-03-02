(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)
(setq org-log-into-drawer t)
(setq org-agenda-window-setup 'same-window)
(setq org-use-fast-todo-selection t)
(setq org-todo-keywords
      '((sequence "TODO(t)" "INPROGRESS(i)" "WAITING(w@/!)"
                        "|" "DONE(d!/!)" "CANCELLED(c@/!)")))
(setq org-agenda-files '("~/org"))
(setq org-agenda-prefix-format
      '((agenda . " %i %-12:c%?-12t% s")
        (timeline . "  % s")
        (todo . " %i %-6:c%l")
        (tags . " %i %-12:c")
        (search . " %i %-12:c")))
(defun startup-todolist ()
  (org-todo-list t)
 )
(add-hook 'window-setup-hook 'startup-todolist)
(setq org-capture-templates
      '(("t" "TODO Entry" entry (file+headline "~/org/todo.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("w" "Web Link" entry (file+olp "~/org/links.org" "Links")
         "* %c :website:\n%U %?%:initial")))
(require 'org-protocol)
(setq org-startup-folded nil)
(setq org-completion-use-ido t)

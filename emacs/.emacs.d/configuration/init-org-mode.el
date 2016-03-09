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
  (switch-to-buffer "*Org Agenda*")
  (switch-to-buffer-other-window "index.org")
 )
(add-hook 'after-init-hook 'startup-todolist)
(setq org-capture-templates
      '(("t" "TODO Entry" entry (file+headline "~/org/todo.org" "Tasks")
         "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("w" "Web Link" entry (file+olp "~/org/links.org" "Links")
         "* %c :website:\n%U %?%:initial")
        ("n" "Note" entry (file "~/org/notes.org"))))
(require 'org-protocol)
(setq org-startup-folded nil)
(setq org-completion-use-ido t)
(setq org-startup-indented t)
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))
; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps t)
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
(setq org-clock-out-when-done t)

(defun bh/is-task-p ()
  "Any task with a todo keyword and no subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task (not has-subtask)))))

(defun bh/clock-in-to-next (kw)
  "Switch a task from TODO to INPROGRESS when clocking in.
Skips capture tasks, projects, and subprojects.
Switch projects and subprojects from NEXT back to TODO"
  (when (not (and (boundp 'org-capture-mode) org-capture-mode))
    (cond
     ((and (member (org-get-todo-state) (list "TODO"))
           (bh/is-task-p))
      "INPROGRESS")
     ((and (member (org-get-todo-state) (list "NEXT"))
           (bh/is-project-p))
      "TODO"))))

(defun bh/is-project-p ()
  "Any task with a todo keyword subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task has-subtask))))

(defun bh/is-task-p ()
  "Any task with a todo keyword and no subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task (not has-subtask)))))
(setq org-clock-in-switch-to-state 'bh/clock-in-to-next)
(setq initial-buffer-choice "~/org/index.org")
(setq org-return-follows-link t)
(setq org-default-notes-file "~/org/notes.org")
(setq org-link-frame-setup '((vm . vm-visit-folder-other-frame)
                             (vm-imap . vm-visit-imap-folder-other-frame)
                             (gnus . org-gnus-no-new-news)
                             (file . find-file)
                             (wl . wl-other-frame)))

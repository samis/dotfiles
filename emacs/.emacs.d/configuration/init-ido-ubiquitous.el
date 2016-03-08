(ido-everywhere 1)
(require 'ido-ubiquitous)
(ido-ubiquitous-mode 1)
(setq ido-ubiquitous-auto-update-overrides t)
(setq ido-ubiquitous-command-overrides
      '((disable exact "execute-extended-command")
        (enable prefix "wl-")
        (enable-old prefix "Info-")
        (enable exact "webjump")
        (enable regexp "\\`\\(find\\|load\\|locate\\)-library\\'")
        (enable prefix "org-")
        (disable prefix "tmm-")
        (enable regexp "\\`\\(load\\|enable\\|disable\\|describe\\|custom-theme-visit\\)-theme\\'")
        (enable-old prefix "bbdb-")
        (enable-old exact "where-is")
        (disable exact "todo-add-category")
        (enable exact "find-tag")
        (enable prefix "etags-select-")))

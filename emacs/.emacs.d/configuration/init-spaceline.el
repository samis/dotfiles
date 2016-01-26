(setq powerline-default-separator 'wave)
(require 'spaceline-config)
(defun spaceline-emacs-theme (&rest additional-segments)
  "Install a modeline close to the one used by Spacemacs, but which
looks better without third-party dependencies.
ADDITIONAL-SEGMENTS are inserted on the right, between `global' and
`buffer-position'."
  (apply 'spaceline--theme
         '(((((persp-name :fallback workspace-number)
              window-number) :separator "|")
            buffer-modified)
           :face highlight-face)
         '(buffer-id buffer-size remote-host)
         additional-segments))
(set-face-attribute 'spaceline-highlight-face nil :background "black" :foreground "green" :inherit 'mode-line)
(set-face-attribute 'spaceline-modified nil :background "red3" :foreground "yellow" :inherit 'mode-line)
(set-face-attribute 'spaceline-read-only nil :background "black" :foreground "green" :inherit 'mode-line)
(set-face-attribute 'spaceline-unmodified nil :background "black" :foreground "green" :inherit 'mode-line)
(spaceline-emacs-theme)
(spaceline-info-mode)

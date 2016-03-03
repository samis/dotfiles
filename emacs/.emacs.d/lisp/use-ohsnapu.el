(defun use-ohsnapu ()
  "Use Ohsnapu as the default face/font for this buffer only."
    (interactive)
    (setq buffer-face-mode-face '(:family "Ohsnapu"))
    (buffer-face-mode))

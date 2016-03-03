(defun ensure-server-is-running ()
  (require 'server)
  (unless (server-running-p)
    (server-start)))

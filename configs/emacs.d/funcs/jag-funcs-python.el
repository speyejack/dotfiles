;;; jag-funcs-python.el --- Functions for python

;;; Commentary:

;;; Code:

(evil-define-operator jag-python-shell-send (beg end &optional type)
  "Send the region to the python shell."
  :move-point nil
  (interactive "<r>")
  (python-shell-send-region beg end))

(provide 'jag-funcs-python)
;;; jag-funcs-python.el ends here

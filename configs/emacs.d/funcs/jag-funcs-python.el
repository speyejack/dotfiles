;;; jag-funcs-python.el --- Functions for python

;;; Commentary:

;;; Code:

(evil-define-operator jag-python-shell-send (BEG END ARGS)
  "Send the region to the python shell."
  (python-shell-send-region BEG END)
  )

(provide 'jag-funcs-python)
;;; jag-funcs-python.el ends here

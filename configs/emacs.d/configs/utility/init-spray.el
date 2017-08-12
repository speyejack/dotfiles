;;; init-spray.el --- Speed-reading-utility
;;; Commentary:

;;; Code:

(defun jag--set-spray-key-bindings ()
  "Set up keybindings for spray.")

(defun jag--setup-spray-config ()
  "Set up personal configuation for spray.")

(defun jag--load-spray-requires ()
  "Load required sub packages for spray.")

(use-package spray
  :ensure t
  :config
  (jag--load-spray-requires)
  (jag--set-spray-key-bindings)
  (jag--setup-spray-config))

(provide 'init-spray)
;;; init-spray.el ends here

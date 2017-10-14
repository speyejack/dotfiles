;;; init-spray.el --- Speed-reading-utility
;;; Commentary:

;;; Code:

(defun jag--add-spray-hooks ()
  "Add hooks to spray."
  (jag--add-spray-key-hooks)
  (jag--add-spray-other-hooks))

(defun jag--add-spray-key-hooks ()
  "Add keyboard hooks to spray.")

(defun jag--add-spray-other-hooks ()
  "Add other hooks to spray.")

(defun jag--set-spray-key-bindings ()
  "Set up keybindings for spray.")

(defun jag--setup-spray-config ()
  "Set up personal configuation for spray.")

(defun jag--load-spray-requires ()
  "Load required sub packages for spray.")

(use-package spray
  :init
  (jag--load-spray-requires)
  (jag--add-spray-hooks)
  :ensure t
  :config
  (jag--set-spray-key-bindings)
  (jag--setup-spray-config))

(provide 'init-spray)
;;; init-spray.el ends here
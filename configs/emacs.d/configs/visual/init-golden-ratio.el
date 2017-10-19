;;; init-golden-ratio.el --- Keeps-all-windows-akin-to-the-golden-ration
;;; Commentary:

;;; Code:

(defun jag--add-golden-ratio-hooks ()
  "Add hooks to golden-ratio."
  (jag--add-golden-ratio-key-hooks)
  (jag--add-golden-ratio-other-hooks))

(defun jag--add-golden-ratio-key-hooks ()
  "Add keyboard hooks to golden-ratio.")

(defun jag--add-golden-ratio-other-hooks ()
  "Add other hooks to golden-ratio.")

(defun jag--set-golden-ratio-key-bindings ()
  "Set up keybindings for golden-ratio.")

(defun jag--setup-golden-ratio-config ()
  "Set up personal configuation for golden-ratio."
  (golden-ratio-mode 1))

(defun jag--load-golden-ratio-requires ()
  "Load required sub packages for golden-ratio.")

(use-package golden-ratio
  :init
  (jag--load-golden-ratio-requires)
  (jag--add-golden-ratio-hooks)
  :ensure t
  :diminish golden-ratio-mode
  :defer 1
  :config
  (jag--set-golden-ratio-key-bindings)
  (jag--setup-golden-ratio-config))

(provide 'init-golden-ratio)
;;; init-golden-ratio.el ends here

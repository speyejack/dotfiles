;;; init-golden-ratio.el --- Keeps-all-windows-akin-to-the-golden-ration
;;; Commentary:

;;; Code:

(defun jag--set-golden-ratio-key-bindings ()
  "Set up keybindings for golden-ratio.")

(defun jag--setup-golden-ratio-config ()
  "Set up personal configuation for golden-ratio.")

(defun jag--load-golden-ratio-requires ()
  "Load required sub packages for golden-ratio.")

(use-package golden-ratio
  :ensure t
  :config
  (jag--load-golden-ratio-requires)
  (jag--set-golden-ratio-key-bindings)
  (jag--setup-golden-ratio-config))

(provide 'init-golden-ratio)
;;; init-golden-ratio.el ends here

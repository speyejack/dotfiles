;;; init-diminish.el --- Allows-hiding-of-minor-modes-in-line-display
;;; Commentary:

;;; Code:

(defun jag--set-diminish-key-bindings ()
  "Set up keybindings for diminish.")

(defun jag--setup-diminish-config ()
  "Set up personal configuation for diminish.")

(defun jag--load-diminish-requires ()
  "Load required sub packages for diminish.")

(use-package diminish
  :ensure t
  :config
  (jag--load-diminish-requires)
  (jag--set-diminish-key-bindings)
  (jag--setup-diminish-config))

(provide 'init-diminish)
;;; init-diminish.el ends here

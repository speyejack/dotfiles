;;; init-diminish.el --- Allows-hiding-of-minor-modes-in-line-display
;;; Commentary:

;;; Code:

(defun jag--add-diminish-hooks ()
  "Add hooks to diminish."
  (jag--add-diminish-key-hooks)
  (jag--add-diminish-other-hooks))

(defun jag--add-diminish-key-hooks ()
  "Add keyboard hooks to diminish.")

(defun jag--add-diminish-other-hooks ()
  "Add other hooks to diminish.")

(defun jag--set-diminish-key-bindings ()
  "Set up keybindings for diminish.")

(defun jag--setup-diminish-config ()
  "Set up personal configuation for diminish.")

(defun jag--load-diminish-requires ()
  "Load required sub packages for diminish.")

(use-package diminish
  :init
  (jag--load-diminish-requires)
  (jag--add-diminish-hooks)
  :ensure t
  :config
  (jag--set-diminish-key-bindings)
  (jag--setup-diminish-config))

(provide 'init-diminish)
;;; init-diminish.el ends here
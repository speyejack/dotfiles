;;; init-engine-mode.el --- Allows-for-searching-of-search-engines
;;; Commentary:

;;; Code:

(defun jag--add-engine-mode-hooks ()
  "Add hooks to engine-mode."
  (jag--add-engine-mode-key-hooks)
  (jag--add-engine-mode-other-hooks))

(defun jag--add-engine-mode-key-hooks ()
  "Add keyboard hooks to engine-mode.")

(defun jag--add-engine-mode-other-hooks ()
  "Add other hooks to engine-mode.")

(defun jag--set-engine-mode-key-bindings ()
  "Set up keybindings for engine-mode.")

(defun jag--setup-engine-mode-config ()
  "Set up personal configuation for engine-mode.")

(defun jag--load-engine-mode-requires ()
  "Load required sub packages for engine-mode.")

(use-package engine-mode
  :init
  (jag--load-engine-mode-requires)
  (jag--add-engine-mode-hooks)
  :ensure t
  :config
  (jag--set-engine-mode-key-bindings)
  (jag--setup-engine-mode-config))

(provide 'init-engine-mode)
;;; init-engine-mode.el ends here
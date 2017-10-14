;;; init-live-py-mode.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-live-py-mode-hooks ()
  "Add hooks to live-py-mode."
  (jag--add-live-py-mode-key-hooks)
  (jag--add-live-py-mode-other-hooks))

(defun jag--add-live-py-mode-key-hooks ()
  "Add key hooks to live-py-mode.")

(defun jag--add-live-py-mode-other-hooks ()
  "Add mode other to live-py-mode.")

(defun jag--set-live-py-mode-key-bindings ()
  "Set up keybindings for live-py-mode.")

(defun jag--setup-live-py-mode-config ()
  "Set up personal configuation for live-py-mode.")

(defun jag--load-live-py-mode-requires ()
  "Load required sub packages for live-py-mode.")

(use-package live-py-mode
  :init
  (jag--load-live-py-mode-requires)
  (jag--add-live-py-mode-hooks)
  :ensure t
  :config
  (jag--set-live-py-mode-key-bindings)
  (jag--setup-live-py-mode-config))

(provide 'init-live-py-mode)
;;; init-live-py-mode.el ends here
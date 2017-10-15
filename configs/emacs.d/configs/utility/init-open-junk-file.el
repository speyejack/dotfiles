;;; init-open-junk-file.el --- Opens-a-junk-file-with-the-current-time-and-date-as-filename
;;; Commentary:

;;; Code:

(defun jag--add-open-junk-file-hooks ()
  "Add hooks to open-junk-file."
  (jag--add-open-junk-file-key-hooks)
  (jag--add-open-junk-file-other-hooks))

(defun jag--add-open-junk-file-key-hooks ()
  "Add keyboard hooks to open-junk-file.")

(defun jag--add-open-junk-file-other-hooks ()
  "Add other hooks to open-junk-file.")

(defun jag--set-open-junk-file-key-bindings ()
  "Set up keybindings for open-junk-file.")

(defun jag--setup-open-junk-file-config ()
  "Set up personal configuation for open-junk-file.")

(defun jag--load-open-junk-file-requires ()
  "Load required sub packages for open-junk-file.")

(use-package open-junk-file
  :init
  (jag--load-open-junk-file-requires)
  (jag--add-open-junk-file-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-open-junk-file-key-bindings)
  (jag--setup-open-junk-file-config))

(provide 'init-open-junk-file)
;;; init-open-junk-file.el ends here

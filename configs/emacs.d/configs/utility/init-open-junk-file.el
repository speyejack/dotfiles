;;; init-open-junk-file.el --- Opens-a-junk-file-with-the-current-time-and-date-as-filename
;;; Commentary:

;;; Code:

(defun jag--set-open-junk-file-key-bindings ()
  "Set up keybindings for open-junk-file.")

(defun jag--setup-open-junk-file-config ()
  "Set up personal configuation for open-junk-file.")

(defun jag--load-open-junk-file-requires ()
  "Load required sub packages for open-junk-file.")

(use-package open-junk-file
  :ensure t
  :config
  (jag--load-open-junk-file-requires)
  (jag--set-open-junk-file-key-bindings)
  (jag--setup-open-junk-file-config))

(provide 'init-open-junk-file)
;;; init-open-junk-file.el ends here

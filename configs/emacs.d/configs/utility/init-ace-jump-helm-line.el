;;; init-ace-jump-helm-line.el --- Uses-Ace-Jump-to-jump-to-Helm-lines
;;; Commentary:

;;; Code:

(defun jag--add-ace-jump-helm-line-hooks ()
  "Add hooks to ace-jump-helm-line."
  (jag--add-ace-jump-helm-line-key-hooks)
  (jag--add-ace-jump-helm-line-other-hooks))

(defun jag--add-ace-jump-helm-line-key-hooks ()
  "Add keyboard hooks to ace-jump-helm-line.")

(defun jag--add-ace-jump-helm-line-other-hooks ()
  "Add other hooks to ace-jump-helm-line.")

(defun jag--set-ace-jump-helm-line-key-bindings ()
  "Set up keybindings for ace-jump-helm-line.")

(defun jag--setup-ace-jump-helm-line-config ()
  "Set up personal configuation for ace-jump-helm-line.")

(defun jag--load-ace-jump-helm-line-requires ()
  "Load required sub packages for ace-jump-helm-line.")

(use-package ace-jump-helm-line
  :init
  (jag--load-ace-jump-helm-line-requires)
  (jag--add-ace-jump-helm-line-hooks)
  :ensure t
  :config
  (jag--set-ace-jump-helm-line-key-bindings)
  (jag--setup-ace-jump-helm-line-config))

(provide 'init-ace-jump-helm-line)
;;; init-ace-jump-helm-line.el ends here
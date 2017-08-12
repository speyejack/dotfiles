;;; init-ace-jump-helm-line.el --- Uses-Ace-Jump-to-jump-to-Helm-lines
;;; Commentary:

;;; Code:

(defun jag--set-ace-jump-helm-line-key-bindings ()
  "Set up keybindings for ace-jump-helm-line.")

(defun jag--setup-ace-jump-helm-line-config ()
  "Set up personal configuation for ace-jump-helm-line.")

(defun jag--load-ace-jump-helm-line-requires ()
  "Load required sub packages for ace-jump-helm-line.")

(use-package ace-jump-helm-line
  :ensure t
  :config
  (jag--load-ace-jump-helm-line-requires)
  (jag--set-ace-jump-helm-line-key-bindings)
  (jag--setup-ace-jump-helm-line-config))

(provide 'init-ace-jump-helm-line)
;;; init-ace-jump-helm-line.el ends here

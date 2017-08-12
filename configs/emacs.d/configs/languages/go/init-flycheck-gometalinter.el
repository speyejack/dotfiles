;;; init-flycheck-gometalinter.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--set-flycheck-gometalinter-key-bindings ()
  "Set up keybindings for flycheck-gometalinter.")

(defun jag--setup-flycheck-gometalinter-config ()
  "Set up personal configuation for flycheck-gometalinter.")

(defun jag--load-flycheck-gometalinter-requires ()
  "Load required sub packages for flycheck-gometalinter.")

(use-package flycheck-gometalinter
  :ensure t
  :config
  (jag--load-flycheck-gometalinter-requires)
  (jag--set-flycheck-gometalinter-key-bindings)
  (jag--setup-flycheck-gometalinter-config))

(provide 'init-flycheck-gometalinter)
;;; init-flycheck-gometalinter.el ends here

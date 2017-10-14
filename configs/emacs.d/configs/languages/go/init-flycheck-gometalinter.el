;;; init-flycheck-gometalinter.el --- Package Description
;;; Commentary:

;;; Code:

(defun jag--add-flycheck-gometalinter-hooks ()
  "Add hooks to flycheck-gometalinter."
  (jag--add-flycheck-gometalinter-key-hooks)
  (jag--add-flycheck-gometalinter-other-hooks))

(defun jag--add-flycheck-gometalinter-key-hooks ()
  "Add keyboard hooks to flycheck-gometalinter.")

(defun jag--add-flycheck-gometalinter-other-hooks ()
  "Add other hooks to flycheck-gometalinter.")

(defun jag--set-flycheck-gometalinter-key-bindings ()
  "Set up keybindings for flycheck-gometalinter.")

(defun jag--setup-flycheck-gometalinter-config ()
  "Set up personal configuation for flycheck-gometalinter.")

(defun jag--load-flycheck-gometalinter-requires ()
  "Load required sub packages for flycheck-gometalinter.")

(use-package flycheck-gometalinter
  :init
  (jag--load-flycheck-gometalinter-requires)
  (jag--add-flycheck-gometalinter-hooks)
  :ensure t
  :config
  (jag--set-flycheck-gometalinter-key-bindings)
  (jag--setup-flycheck-gometalinter-config))

(provide 'init-flycheck-gometalinter)
;;; init-flycheck-gometalinter.el ends here
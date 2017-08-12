;;; init-org-bullets.el --- More-bullet-types-for-org-mode
;;; Commentary:

;;; Code:

(defun jag--set-org-bullets-key-bindings ()
  "Set up keybindings for org-bullets.")

(defun jag--setup-org-bullets-config ()
  "Set up personal configuation for org-bullets.")

(defun jag--load-org-bullets-requires ()
  "Load required sub packages for org-bullets.")

(use-package org-bullets
  :ensure t
  :config
  (jag--load-org-bullets-requires)
  (jag--set-org-bullets-key-bindings)
  (jag--setup-org-bullets-config))

(provide 'init-org-bullets)
;;; init-org-bullets.el ends here

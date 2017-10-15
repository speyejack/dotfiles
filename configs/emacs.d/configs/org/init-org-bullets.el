;;; init-org-bullets.el --- More-bullet-types-for-org-mode
;;; Commentary:

;;; Code:

(defun jag--add-org-bullets-hooks ()
  "Add hooks to org-bullets."
  (jag--add-org-bullets-key-hooks)
  (jag--add-org-bullets-other-hooks))

(defun jag--add-org-bullets-key-hooks ()
  "Add keyboard hooks to org-bullets.")

(defun jag--add-org-bullets-other-hooks ()
  "Add other hooks to org-bullets.")

(defun jag--set-org-bullets-key-bindings ()
  "Set up keybindings for org-bullets.")

(defun jag--setup-org-bullets-config ()
  "Set up personal configuation for org-bullets.")

(defun jag--load-org-bullets-requires ()
  "Load required sub packages for org-bullets.")

(use-package org-bullets
  :init
  (jag--load-org-bullets-requires)
  (jag--add-org-bullets-hooks)
  :ensure t
  :commands 'org-mode
  :config
  (jag--set-org-bullets-key-bindings)
  (jag--setup-org-bullets-config))

(provide 'init-org-bullets)
;;; init-org-bullets.el ends here

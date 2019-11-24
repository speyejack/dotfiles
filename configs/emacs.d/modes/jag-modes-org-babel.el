;;; jag-modes-org-babel.el --- Config for mode org-babel

;;; Commentary:

;;; Code:

(use-package jag-funcs-org-babel
  :ensure nil
  :init
  )

(use-package org-babel
  :defer t
  :ensure org-plus-contrib
  :init
  (setq org-confirm-babel-evaluate nil))

;; Avoid `org-babel-do-load-languages' since it does an eager require.
(use-package ob-emacs-lisp
  :ensure nil
  :commands
  (org-babel-execute:elisp
   org-babel-expand-body:elisp

   org-babel-execute:emacs-lisp
   org-babel-expand-body:emacs-lisp))

(use-package ob-python
  :ensure nil
  :commands
  (org-babel-execute:python))

(use-package ob-shell
  :ensure nil
  :commands
  (org-babel-execute:sh
   org-babel-expand-body:sh

   org-babel-execute:bash
   org-babel-expand-body:bash))

(use-package ob-plantuml
  :ensure nil
  :commands
  (org-babel-execute:plantuml)
  :config
  (setq org-plantuml-jar-path (expand-file-name "/usr/share/plantuml/plantuml.jar"))
  )

(provide 'jag-modes-org-babel)
;;; jag-modes-org-babel.el ends here

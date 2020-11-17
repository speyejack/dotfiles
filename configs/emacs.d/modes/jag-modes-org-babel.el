;;; jag-modes-org-babel.el --- Config for mode org-babel

;;; Commentary:

;;; Code:

(use-package jag-funcs-org-babel
  :defer t
  :straight nil)

(use-package org-babel
  :defer t
  :straight org-plus-contrib
  :init
  (setq org-confirm-babel-evaluate nil))

;; Avoid `org-babel-do-load-languages' since it does an eager require.
(use-package ob-emacs-lisp
  :straight nil
  :commands
  (org-babel-execute:elisp
   org-babel-expand-body:elisp

   org-babel-execute:emacs-lisp
   org-babel-expand-body:emacs-lisp))

(use-package ob-python
  :straight nil
  :commands
  (org-babel-execute:python)
  :config
  (setq org-babel-python-command "python3"))

(use-package ob-shell
  :straight nil
  :commands
  (org-babel-execute:sh
   org-babel-expand-body:sh

   org-babel-execute:bash
   org-babel-expand-body:bash))

(use-package ob-plantuml
  :straight nil
  :commands
  (org-babel-execute:plantuml)
  :config
  ;; (use-package jag-modes-plantuml
  ;; 	:straight nil)
  (setq org-plantuml-jar-path (expand-file-name "/usr/share/plantuml/plantuml.jar")))

(use-package ob-gnuplot
  :straight nil
  :commands
  (org-babel-execute:gnuplot)
  :config
  (use-package gnuplot))

(provide 'jag-modes-org-babel)
;;; jag-modes-org-babel.el ends here

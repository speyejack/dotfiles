;;; jag-keys-application.el --- Application key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The application key bindings used throughout Emacs

;;; Code:

;; Create the application leader definer
(general-create-definer jag--application-leader-def
  :which-key "application"
  :states '(normal visual)
  :prefix (concat jag-leader-key " a")
  :global-prefix (concat jag-emacs-leader-key " a"))


(jag--application-leader-def
 "c" 'calc-dispatch
 "p" 'list-processes
 "P" 'proced
 "u" 'undo-tree-visualize)


(provide 'jag-keys-application)

;;; jag-keys-application.el ends here

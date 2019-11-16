;;; jag-keys-leader.el --- Leader key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The leader key bindings used throughout Emacs

;;; Code:

(jag-define-keys jag-leader-map
  "SPC" 'helm-M-x
  ";"  'eval-expression
  ":"  'helm-eval-expression-with-eldoc
  "?" 'helm-descbinds
  "!" 'shell-command
  "u" 'universal-argument
  "U" 'undo-tree-visualize
  "I" 'use-package-report
  "d" 'helm-resume
  "k" 'evil-operator-eval
  "=" 'jag-evil-reformat-buffer
  "|" 'restart-emacs
  "'" 'evil-save-modified-and-close
  "q" 'evil-quit)

(provide 'jag-keys-leader)

;;; jag-keys-leader.el ends here

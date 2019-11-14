;;; jag-keys-leader.el --- Leader key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The leader key bindings used throughout Emacs

;;; Code:

(general-unbind
  :states '(motion)
  "SPC")

(general-unbind
  :states'(motion emacs insert)
  "C-SPC")

;; Create the leader definer
(general-create-definer jag--leader-def
  :which-key "Leader prefix"
  :states '(normal visual operator emacs)
  :prefix jag-leader-key
  :global-prefix jag-emacs-leader-key)

(use-package jag-funcs-leader
  :ensure nil
  :commands (jag-buffer-motion))

(use-package jag-funcs-evil
  :defer t
  :ensure nil
  :commands (jag-evil-reformat-buffer))

(jag--leader-def
  :keymaps 'org-capture-mode-map
  "\"" 'org-capture-refile)
(jag--leader-def
  "SPC" 'helm-M-x
  ";"  'eval-expression
  ":"  'helm-eval-expression-with-eldoc
  "?" 'helm-descbinds
  "!" 'shell-command
  "u" 'universal-argument
  "U" 'undo-tree-visualize
  "I" 'use-package-report
  "a" '(:which-key "application")
  "b" '(:which-key "buffer")
  "c" '(:which-key "compile")
  "d" 'helm-resume
  "e" '(:which-key "errors")
  "f" '(:which-key "files")
  "g" '(:which-key "git/version-control")
  "h" '(:which-key "help")
  "i" '(:which-key "insert")
  "j" '(:which-key "jump/join/split")
  "k" 'evil-operator-eval
  "l" '(:which-key "web")
  "m" '(:which-key "local-mode-map")
  "n" '(:which-key "narrow/fold/numbers")
  "o" '(:which-key "organize")
  "p" '(:which-key "project")
  "r" '(:which-key "registers/ring/resume")
  "s" '(:which-key "search/symbol")
  "t" '(:which-key "text")
  "v" '(:which-key "visual-map")
  "w" '(:which-key "window")
  "x" '(:which-key "toggles")
  "y" '(:which-key "yank")
  "=" 'jag-evil-reformat-buffer
  "|" 'restart-emacs
  "'" 'evil-save-modified-and-close
  "q" 'evil-quit)

(provide 'jag-keys-leader)

;;; jag-keys-leader.el ends here

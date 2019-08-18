;;; jag-keys-leader.el --- Leader key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The leader key bindings used throughout Emacs

;;; Code:

;; TODO Make leader work with motion state
;; TODO Get prefix key working
;; Create the leader definer
(general-create-definer jag--leader-def
  :which-key "Leader prefix"
  :states '(normal visual)
  :prefix jag-leader-key
  :global-prefix jag-emacs-leader-key)

(use-package jag-funcs-evil
  :defer t
  :ensure nil
  :commands (jag-evil-reformat-buffer))

(jag--leader-def
  "!" 'shell-command
  "u" 'universal-argument
  "I"  'use-package-report
  "m"  '(:which-key "local-mode-map")
  "v"  '(:which-key "visual-map")
  "=" 'jag-evil-reformat-buffer
  "'" 'evil-save-modified-and-close
  "q" 'evil-quit)

(provide 'jag-keys-leader)

;;; jag-keys-leader.el ends here

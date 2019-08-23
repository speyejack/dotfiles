;;; jag-core-keybindings.el --- Core key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The core key bindings used throughout Emacs

;;; Code:

(defvar jag-leader-key "SPC"
  "The leader key in all motion states.")

(defvar jag-emacs-leader-key "M-SPC"
  "The leader key in all states.")

(require 'jag-keys-leader)
(require 'jag-keys-local)

(require 'jag-keys-application)
(require 'jag-keys-buffer)
(require 'jag-keys-compile)
(require 'jag-keys-errors)
(require 'jag-keys-files)
(require 'jag-keys-help)
(require 'jag-keys-insert)
(require 'jag-keys-jump)
(require 'jag-keys-narrow)
(require 'jag-keys-project)
(require 'jag-keys-registers)
(require 'jag-keys-search)
(require 'jag-keys-text)
(require 'jag-keys-toggles)
(require 'jag-keys-vc)
(require 'jag-keys-visual)
(require 'jag-keys-web)
(require 'jag-keys-window)
(require 'jag-keys-yank)


(provide 'jag-core-keybindings)

;;; jag-core-keybindings.el ends here

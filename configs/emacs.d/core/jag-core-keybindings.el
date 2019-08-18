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
(require 'jag-keys-buffer)
(require 'jag-keys-errors)
(require 'jag-keys-files)
(require 'jag-keys-compile)
(require 'jag-keys-utility)
(require 'jag-keys-window)
(require 'jag-keys-narrow)
(require 'jag-keys-text)
(require 'jag-keys-jump)
(require 'jag-keys-help)
(require 'jag-keys-application)
(require 'jag-keys-search)


(provide 'jag-core-keybindings)

;;; jag-core-keybindings.el ends here

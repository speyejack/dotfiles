;;; jag-keys-compile.el --- Compile key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The compile key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "c" "compile")

(jag-define-keys jag-compile-map
  "C" 'compile
  "d" 'jag-close-compilation-window
  "k" 'kill-compilation
  "r" 'recompile
  "m" 'helm-make)

(provide 'jag-keys-compile)

;;; jag-keys-compile.el ends here

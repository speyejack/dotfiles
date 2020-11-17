;;; jag-keys-compile.el --- Compile key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The compile key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "c" "compile")

(jag-declare-prefixes
 '(("c" "compile")))

(jag-define-keys jag-compile-map
  "c" 'recompile
  "C" 'compile
  "d" 'jag-close-compilation-window
  "k" 'kill-compilation
  "r" 'recompile
  "m" 'helm-make)

(use-package jag-funcs-compile
  :commands 'jag-close-compilation-window
  :straight nil)

(provide 'jag-keys-compile)

;;; jag-keys-compile.el ends here

;;; jag-keys-leader.el --- Leader key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The leader key bindings used throughout Emacs

;;; Code:

(general-unbind
  :states '(motion)
  "SPC")

;; TODO Make leader work with motion state
;; TODO Get prefix key working
;; Create the leader definer
(general-create-definer jag--leader-def
  :which-key "Leader prefix"
  :states '(normal visual operator emacs)
  :prefix jag-leader-key
  :global-prefix jag-emacs-leader-key)

(use-package jag-funcs-evil
  :defer t
  :ensure nil
  :commands (jag-evil-reformat-buffer))

(jag--leader-def
  "SPC" 'helm-M-x
  ":"  'eval-expression
  "?" 'helm-descbinds
  "!" 'shell-command
  "u" 'universal-argument
  "I" 'use-package-report
  "m" '(:which-key "local-mode-map")
  "v" '(:which-key "visual-map")
  "b" '(:which-key "buffer")
  "e" '(:which-key "errors")
  "f" '(:which-key "files")
  "c" '(:which-key "compile/comment")
  "U" '(:which-key "utility")
  "w" '(:which-key "window")
  "n" '(:which-key "narrow/numbers")
  "t" '(:which-key "text")
  "j" '(:which-key "jump/join/split")
  "h" '(:which-key "help")
  "a" '(:which-key "application")
  "s" '(:which-key "search/symbol")
  "r" '(:which-key "registers/ring/resume")
  "p" '(:which-key "project")
  "i" '(:which-key "insert")
  "g" '(:which-key "git/version-control")
  "x" '(:which-key "toggles")
  "y" '(:which-key "web")
  "=" 'jag-evil-reformat-buffer
  "|" 'restart-emacs
  "'" 'evil-save-modified-and-close
  "q" 'evil-quit)

;; Things to be rebound
;; "u"  'undo-tree-visualize
;; "o"  'delete-other-windows  ;; C-w o
;; "O"  'delete-window  ;; C-w o
;; "R"  '((lambda () (interactive) (revert-buffer :ignore-auto :noconfirm)) :which-key "revert-buffer")
;; "N"  '(:which-key "adjust-window")
;; "Nn" 'air-narrow-dwim       ;; Narrow to region and enter normal mode
;; "Nw" 'widen
;; "NN" 'air-narrow-dwim       ;; Narrow to region and enter normal mode
;; "NW" 'widen
;; "."  'mode-line-other-buffer
;; ":"  'eval-expression
;; "d"  'kill-this-buffer
;; "D"  '((lambda () (interactive)
;; 		 (let ((kill-buffer-query-functions (delq 'process-kill-buffer-query-function kill-buffer-query-functions)))
;; 		   (kill-this-buffer)
;; 		   (delete-window))) :which-key force-kill-this-buffer)
;; "B"  'ibuffer


(provide 'jag-keys-leader)

;;; jag-keys-leader.el ends here

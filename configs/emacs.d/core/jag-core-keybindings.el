;;; jag-core-keybindings.el --- Core key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The core key bindings used throughout Emacs

;;; Code:

;; TODO Make leader work with motion state
;; Create the leader definer
(general-create-definer jag--leader-def
  :states '(normal visual)
  :prefix "SPC")

;; Create the local leader definer
(general-create-definer jag--local-leader-def
  :states '(normal visual)
  :prefix "SPC m")

;; Create the visual leader definer
(general-create-definer jag--visual-leader-def
  :which-key "Visual leader prefix"
  :states '(normal visual)
  :prefix "SPC v")

;; Create the buffer leader definer
(general-create-definer jag--buffer-leader-def
  :which-key "Buffer leader prefix"
  :states '(normal visual)
  :prefix "SPC v")

;; Create the errors leader definer
(general-create-definer jag--errors-leader-def
  :which-key "Errors leader prefix"
  :states '(normal visual)
  :prefix "SPC v")

;; Create the files leader definer
(general-create-definer jag--files-leader-def
  :which-key "Files leader prefix"
  :states '(normal visual)
  :prefix "SPC v")

;; Create the compile leader definer
(general-create-definer jag--compile-leader-def
  :which-key "Compile leader prefix"
  :states '(normal visual)
  :prefix "SPC c")

;; Create the utility leader definer
(general-create-definer jag--utility-leader-def
  :which-key "utility"
  :states '(normal visual)
  :prefix "SPC U")

;; Create the window leader definer
(general-create-definer jag--window-leader-def
  :which-key "Window leader prefix"
  :states '(normal visual)
  :prefix "SPC w")

;; Create the text leader definer
(general-create-definer jag--text-leader-def
  :which-key "Text leader prefix"
  :states '(normal visual)
  :prefix "SPC v")

;; Create the jump leader definer
(general-create-definer jag--jump-leader-def
  :which-key "jump"
  :states '(normal visual)
  :prefix "SPC j")

;; Create the help leader definer
(general-create-definer jag--help-leader-def
  :which-key "help"
  :states '(normal visual)
  :prefix "SPC h")

;; Create the application leader definer
(general-create-definer jag--application-leader-def
  :which-key "application"
  :states '(normal visual)
  :prefix "SPC a")

;; Create the save/search/symbols leader definer
(general-create-definer jag--save-search-symbols-leader-def
  :which-key "save/search/symbols"
  :states '(normal visual)
  :prefix "SPC s")

(jag--leader-def
  ","  'other-window
  "."  'mode-line-other-buffer
  ":"  'eval-expression
  "d"  'kill-this-buffer
  "D"  '((lambda () (interactive)
		   (let ((kill-buffer-query-functions (delq 'process-kill-buffer-query-function kill-buffer-query-functions)))
			 (kill-this-buffer)
			 (delete-window))) :which-key force-kill-this-buffer)
  "B"  'ibuffer
  "I"  'general-describe-keybindings
  "N"  '(:which-key "adjust-window")
  "Nn" 'air-narrow-dwim       ;; Narrow to region and enter normal mode
  "Nw" 'widen
  "NN" 'air-narrow-dwim       ;; Narrow to region and enter normal mode
  "NW" 'widen
  "m"  '(:which-key "local-mode-map")
  "o"  'delete-other-windows  ;; C-w o
  "O"  'delete-window  ;; C-w o
  "R"  '((lambda () (interactive) (revert-buffer :ignore-auto :noconfirm)) :which-key "revert-buffer")
  ;; "t"  'gtags-reindex
  "T"  'gtags-find-tag
  "w"  'save-buffer
  "v"  '(:which-key "visual-map"))

(jag--visual-leader-def
  "l"  'whitespace-mode)

(jag--utility-leader-def
 "i"  'use-package-report)

(use-package jag-funcs-help
  :ensure nil
  :general
  (jag--help-leader-def
   "d" '(nil :wk "describe")
   "db" 'describe-bindings
   "dc" 'describe-char
   "df" 'describe-function
   "dk" 'describe-key
   "dl" 'jag-describe-last-keys
   "dp" 'describe-package
   "ds" 'jag-describe-system-info
   "dt" 'describe-theme
   "dv" 'describe-variable
   "N"  'view-emacs-news))

(provide 'jag-core-keybindings)

;;; jag-core-keybindings.el ends here

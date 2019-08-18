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
  :keymaps '(normal visual)
  :states '(normal visual)
  :prefix "SPC m")

;; Create the visual leader definer
(general-create-definer jag--visual-leader-def
  :which-key "Visual leader prefix"
  :keymaps 'normal
  :prefix "SPC V")

;; Create the utility leader definer
(general-create-definer jag--utility-leader-def
  :which-key "Utility leader prefix"
  :states '(normal visual)
  :prefix "SPC U")


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

(provide 'jag-core-keybindings)

;;; jag-core-keybindings.el ends here

;;; init-evil-leader.el --- Adds-leader-key-to-evil
;;; Commentary:

;;; Code:

(defun jag--add-evil-leader-hooks ()
  "Add hooks to evil-leader."
  (jag--add-evil-leader-key-hooks)
  (jag--add-evil-leader-other-hooks))

(defun jag--add-evil-leader-key-hooks ()
  "Add key hooks to evil-leader.")

(defun jag--add-evil-leader-other-hooks ()
  "Add mode other to evil-leader.")

(defun jag--set-evil-leader-key-bindings ()
  "Set up keybindings for evil-leader."
  (evil-leader/set-leader ",")
  (evil-leader/set-key
	","  'other-window
	"."  'mode-line-other-buffer
	":"  'eval-expression
	"aa" 'align-regexp
	"a=" 'my-align-single-equals
	"b"  'helm-mini             ;; Switch to another buffer
	"B"  'magit-blame-toggle
	"c"  'evil-commentary
	;; Add evil nerd commentary
	"d"  'kill-this-buffer
	"D"  'open-current-line-in-codebase-search
	"e"  'evil-exchange
	"f"  'helm-imenu            ;; Jump to function in buffer
	"g"  'magit-status
	"h"  'git-timemachine       ;; Open git timemachine
	"l"  'whitespace-mode       ;; Show invisible characters
	"nn" 'air-narrow-dwim       ;; Narrow to region and enter normal mode
	"nw" 'widen
	"o"  'delete-other-windows  ;; C-w o
	"p"  'helm-show-kill-ring
	"Pp"  'helm-projectile-switch-project
	"Pf"  'helm-projectile-find-file
	"s"  'ag-project            ;; Ag search from project's root
	"r"  (lambda () (interactive) (revert-buffer :ignore-auto :noconfirm))
	"R"  (lambda () (interactive) (font-lock-fontify-buffer) (redraw-display))
	"S"  'delete-trailing-whitespace
	"t"  'gtags-reindex
	"T"  'gtags-find-tag
	"u"  'undo-tree-visualize
	"v"  'centered-cursor-mode
	"w"  'save-buffer
	"x"  'helm-M-x
	"y"  'yank-to-x-clipboard))


(defun jag--setup-evil-leader-config ()
  "Set up personal configuation for evil-leader."
  (global-evil-leader-mode))

(defun jag--load-evil-leader-requires ()
  "Load required sub packages for evil-leader.")

(use-package evil-leader
  :init
  (jag--load-evil-leader-requires)
  (jag--add-evil-leader-hooks)
  :ensure t
  :diminish 'global-evil-leader-mode
  :config
  (jag--set-evil-leader-key-bindings)
  (jag--setup-evil-leader-config))

(provide 'init-evil-leader)
;;; init-evil-leader.el ends here
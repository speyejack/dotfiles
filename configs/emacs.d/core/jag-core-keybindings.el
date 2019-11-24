;;; jag-core-keybindings.el --- Core key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The core key bindings used throughout Emacs

;;; Code:
(defvar jag-leader-map (make-sparse-keymap)
  "Base keymap for all leader keys")

(defvar jag-leader-key "SPC"
  "The leader key in all motion states.")

(defvar jag-emacs-leader-key "C-SPC"
  "The leader key in all states.")

(defun jag-create-sub-leader-map (leader-keymap key name)
  "Create new keymap bound in LEADER-KEYMAP under KEY with NAME."
  (let* ((jag-map-sym (intern (format "jag-%s-map" name)))
         jag-map-val)

    ;; Use existing keymap if it exists.
	(unless (boundp jag-map-sym)
	  (set jag-map-sym (make-sparse-keymap))
	  (define-key (symbol-value jag-map-sym) (kbd "C-g") 'keyboard-quit)
	  (define-key (symbol-value jag-map-sym) (kbd "<escape>") 'keyboard-quit))
	(setq jag-map-val (symbol-value jag-map-sym))

	(define-key leader-keymap (kbd key) jag-map-val)

	jag-map-val))

(defun jag-define-keys (keymap key def &rest bindings)
  "In KEYMAP define KEY to DEF as well as all BINDINGS.
`kbd' is applied to all KEYs.  BINDINGS is additional KEY-DEF pairs.
Always defines <escape> and <C-g> as `keyboard-quit'."
  (while key
	(define-key keymap (kbd key) def)
	(setq key (pop bindings))
	(setq def (pop bindings))))

(defun jag-declare-prefixes (prefixes)
  "Declare which-key PREFIXES."
  (mapc (lambda (x) (apply #'jag-declare-prefix x))
		prefixes))

(defun jag-declare-prefix (prefix name)
  "Declare a which-key PREFIX.
PREFIX is a string describing a key sequence.  NAME is a string
used as the prefix command."
  (let* ((command name)
	 (full-prefix (concat jag-leader-key " " prefix))
	 (full-prefix-emacs (concat jag-emacs-leader-key " " prefix))
	 (full-prefix-lst (listify-key-sequence (kbd full-prefix)))
	 (full-prefix-emacs-lst (listify-key-sequence
				 (kbd full-prefix-emacs))))
    (which-key-declare-prefixes
      full-prefix-emacs name
      full-prefix name)))

(defun jag-declare-prefix-for-mode (mode prefix name)
  "Declare a which-key PREFIX in MODE with NAME.
MODE is the mode in which this prefix command should be added.
PREFIX is a string describing a key sequence.  NAME is a symbol name
used as the prefix command."
  (let  ((command (intern (concat (symbol-name mode) name)))
	 (full-prefix (concat jag-leader-key " " prefix))
	 (full-prefix-emacs (concat jag-emacs-leader-key " " prefix)))

    (which-key-declare-prefixes-for-mode mode
      full-prefix-emacs name
      full-prefix name)))

(require 'jag-keys-global)

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
(require 'jag-keys-organize)
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

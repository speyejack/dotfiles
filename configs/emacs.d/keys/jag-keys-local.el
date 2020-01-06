;;; jag-keys-local.el --- Local key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The local key bindings used throughout Emacs

;;; Code:

(jag-declare-prefixes
 '(("m" "local")))

(defun jag--init-major-mode-map (mode)
  "Returns a keymap for major MODE that's activated by the leader keys."
  (let* ((mode-map-sym (intern (format "%s-map" mode)))
         (jag-map-sym (intern (format "jag-%s-map" mode)))
         jag-map-val)

	;; Use existing keymap if it exists.
	(unless (boundp jag-map-sym)
	  (set jag-map-sym (make-sparse-keymap))
	  (define-key (symbol-value jag-map-sym) (kbd "C-g") 'keyboard-quit)
	  (define-key (symbol-value jag-map-sym) (kbd "<escape>") 'keyboard-quit)

	  (eval-after-load 'evil
		`(progn
		   ;; All evil states with `M-m m'
		   (evil-define-key '(normal insert visual operator motion emacs)
			 ,mode-map-sym
			 (kbd (concat jag-emacs-leader-key " " jag-local-leader-key)) ,jag-map-sym)
		   ;; Non inserting evil states with SPC-m
		   (evil-define-key '(normal visual operator motion)
			 ,mode-map-sym
			 (kbd (concat jag-leader-key " " jag-local-leader-key)) ,jag-map-sym))))

	(setq jag-map-val (symbol-value jag-map-sym))

    jag-map-val))


(defun jag-define-leader-keys-for-major-mode (mode key def &rest bindings)
  "Add KEY and DEF as key bindings in major-MODE.
The keymap used for KEY is activated by SPC-m and under `M-m m'
for the major-mode MODE.
BINDINGS are additions KEY-DEF pairs. `kbd' is applied to every KEY."
  (apply 'jag-define-keys (jag--init-major-mode-map mode) key def bindings))



(provide 'jag-keys-local)

;;; jag-keys-local.el ends here

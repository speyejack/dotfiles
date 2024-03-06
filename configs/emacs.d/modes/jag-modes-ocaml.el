;;; jag-modes-ocaml.el --- Config for mode ocaml

;;; Commentary:

;;; Code:

(use-package jag-funcs-ocaml
  :defer t
  :straight nil)

(let ((opam-share (ignore-errors (car (process-lines "opam" "var" "share")))))
  (when (and opam-share (file-directory-p opam-share))
	;; Register Merlin
	(add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
	(autoload 'merlin-mode "merlin" nil t nil)
	;; Automatically start it in OCaml buffers
	(add-hook 'tuareg-mode-hook 'merlin-mode t)
	(add-hook 'caml-mode-hook 'merlin-mode t)
	;; Use opam switch to lookup ocamlmerlin binary
	(setq merlin-command 'opam)
	;; To easily change opam switches within a given Emacs session, you can
	;; install the minor mode https://github.com/ProofGeneral/opam-switch-mode
	;; and use one of its "OPSW" menus.
	))

(provide 'jag-modes-ocaml)
;;; jag-modes-ocaml.el ends here

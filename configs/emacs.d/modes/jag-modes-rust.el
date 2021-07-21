;;; jag-modes-rust.el --- Config for mode rust

;;; Commentary:

;;; Code:

(use-package jag-funcs-rust
  :defer t
  :straight nil)

(add-hook 'rust-mode-hook
		  (lambda ()
			(lsp)))

(use-package rust-mode
  :config
  (setq lsp-rust-server 'rust-analyzer))

(provide 'jag-modes-rust)
;;; jag-modes-rust.el ends here

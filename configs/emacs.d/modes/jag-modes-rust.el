;;; jag-modes-rust.el --- Config for mode rust

;;; Commentary:

;;; Code:

(use-package jag-funcs-rust
  :defer t
  :straight nil)

(add-hook 'rust-mode-hook
		  (lambda ()
			((lsp)
			(rust-enable-format-on-save))))

(jag-define-leader-keys-for-major-mode
 'rust-mode
"m" 'cargo-process-repeat
"h" 'lsp-rust-analyzer-open-external-docs
"d" 'lsp-rust-analyzer-debug
"k" 'lsp-rust-analyzer-rerun
"K" 'lsp-rust-analyzer-run
"r" 'cargo-process-run
"R" 'cargo-process-run-bin
"e" 'cargo-process-run-example
"s" 'cargo-process-current-test
"t" 'cargo-process-test
"T" 'cargo-process-current-file-tests
"f" 'cargo-process-clippy
"=" 'cargo-process-fmt
"c" 'cargo-process-build
"C" 'cargo-process-clean
"b" 'cargo-process-bench
"D" 'cargo-process-doc
"l" 'lsp-rust-analyzer-open-external-docs
"o" 'lsp-rust-analyzer-open-cargo-toml
 )


(use-package rust-mode
  :config
  (setq lsp-rust-server 'rust-analyzer))

(use-package cargo
  :after rust-mode
  :commands
  (cargo-process-run-bin
   cargo-process-run-example
   cargo-process-current-test
   cargo-process-test
   cargo-process-current-file-tests
   cargo-process-clippy
   cargo-process-fmt
   cargo-process-build
   cargo-process-clean
   cargo-process-bench
   cargo-process-doc))

(provide 'jag-modes-rust)
;;; jag-modes-rust.el ends here

;;; jag-modes-c-c++.el --- Config for mode c-c++

;;; Commentary:

;;; Code:

(use-package jag-funcs-c-c++
  :defer t
  :straight nil
  :commands 'jag-start-realgud-gdb
  :init
  (defcustom jag-realgud-gdb-command
	nil
	"The default command passed to realgud during `jag-start-realgud-gdb'.
Normally for the purpose of being used with dir locals to have a default method of testing a bug."
	:type 'string
	:safe 'stringp))


(with-eval-after-load 'cc-mode
  (dolist (mode '(c-mode c++-mode))
	(evil-define-key 'insert (symbol-value (intern (format "%s-map"mode)))
	  (kbd "M-RET") 'c-indent-new-comment-line)
	(jag-define-leader-keys-for-major-mode
	 mode
	 "d" 'jag-start-realgud-gdb
	 "D" 'realgud:gdb
	 "m" 'projectile-find-other-file
	 "M" 'projectile-find-other-file-other-window
	 "C-m" 'projectile-find-other-file-other-frame
	 "a" 'disaster)))

(use-package ccls
  :after (cc-mode)
  :config
  (when (executable-find "ccls")
	(dolist (hook '(c++-mode-hook c-mode-hook))
			(add-hook hook 'lsp)))
  (setq lsp-enable-indentation nil))

(use-package dap-lldb
  :after dap-mode
  :straight nil
  :after (cc-mode)
  :config
  (setq dap-lldb-debug-program '("/usr/bin/lldb-vscode")))

(use-package disaster
  :commands 'disaster
  :diminish)

(provide 'jag-modes-c-c++)
;;; jag-modes-c-c++.el ends here

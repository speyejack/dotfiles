;;; init-flyspell-correct.el --- Adds-method-to-correct-spelling
;;; Commentary:

;;; Code:

(defun jag--add-flyspell-correct-hooks ()
  "Add hooks to flyspell-correct."
  (jag--add-flyspell-correct-key-hooks)
  (jag--add-flyspell-correct-other-hooks))

(defun jag--add-flyspell-correct-key-hooks ()
  "Add keyboard hooks to flyspell-correct."
  (add-hook 'flyspell-mode-hook
			(lambda ()
			  (progn
				(define-key flyspell-mode-map (kbd "C-:") 'flyspell-correct-previous-word-generic)
				(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-next-word-generic)))))

(defun jag--add-flyspell-correct-other-hooks ()
  "Add other hooks to flyspell-correct.")

(defun jag--set-flyspell-correct-key-bindings ()
  "Set up keybindings for flyspell-correct."
  )

(defun jag--setup-flyspell-correct-config ()
  "Set up personal configuation for flyspell-correct.")

(defun jag--load-flyspell-correct-requires ()
  "Load required sub packages for flyspell-correct."
  (require 'init-flyspell-correct-helm))

(use-package flyspell-correct
  :init
  (jag--load-flyspell-correct-requires)
  (jag--add-flyspell-correct-hooks)
  :ensure t
  :commands 'flyspell-correct-previous-word-generic
  :config
  (jag--set-flyspell-correct-key-bindings)
  (jag--setup-flyspell-correct-config))

(provide 'init-flyspell-correct)
;;; init-flyspell-correct.el ends here

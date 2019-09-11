;;; jag-keys-yank.el --- Config for key yank

;;; Commentary:

;;; Code:

;; Create the yank leader definer
(general-create-definer jag--yank-leader-def
  :which-key "yank leader prefix"
  :states '(normal visual operator)
  :prefix (concat jag-leader-key " y")
  :global-prefix (concat jag-emacs-leader-key " y"))

(use-package jag-funcs-buffer
  :ensure nil
  :general
  (jag--yank-leader-def
  "b" 'jag-copy-whole-buffer-to-clipboard))

(use-package jag-funcs-yank
  :ensure nil
  :general
  (jag--yank-leader-def
   "d" 'jag-yank-directory-path
   "f" 'jag-yank-file-path
   "m" 'jag-yank-last-message))

(provide 'jag-keys-yank)
;;; jag-keys-yank.el ends here

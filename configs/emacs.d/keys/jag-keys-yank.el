;;; jag-keys-yank.el --- Config for key yank

;;; Commentary:

;;; Code:

(jag-create-sub-leader-map jag-leader-map "y" "yank")

(jag-declare-prefixes
 '(("y" "yank")))

(jag-define-keys jag-yank-map
 "b" 'jag-copy-whole-buffer-to-clipboard
 "d" 'jag-yank-directory-path
 "f" 'jag-yank-file-path
 "m" 'jag-yank-last-message)

(use-package jag-funcs-buffer
  :commands (jag-copy-whole-buffer-to-clipboard)
  :ensure nil)

(use-package jag-funcs-yank
  :commands
  (jag-yank-directory-path
   jag-yank-file-path
   jag-yank-last-message)
  :ensure nil)

(provide 'jag-keys-yank)
;;; jag-keys-yank.el ends here

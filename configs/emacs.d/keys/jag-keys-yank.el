;;; jag-keys-yank.el --- Config for key yank

;;; Commentary:

;;; Code:

(jag-create-sub-leader-map jag-leader-map "y" "yank")

(use-package jag-funcs-buffer
  :ensure nil
  :bind
  (:map jag-yank-map
  ("b" . 'jag-copy-whole-buffer-to-clipboard)))

(use-package jag-funcs-yank
  :ensure nil
  :bind
  (:map jag-yank-map
   ("d" . 'jag-yank-directory-path)
   ("f" . 'jag-yank-file-path)
   ("m" . 'jag-yank-last-message)))

(provide 'jag-keys-yank)
;;; jag-keys-yank.el ends here

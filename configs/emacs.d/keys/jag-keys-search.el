;;; jag-keys-search.el --- Search key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The search key bindings used throughout Emacs

;;; Code:

;; Create the save/search/symbols leader definer
(general-create-definer jag--save-search-symbols-leader-def
  :which-key "save/search/symbols"
  :states '(normal visual)
  :prefix (concat jag-leader-key " s")
  :global-prefix (concat jag-emacs-leader-key " s"))


(jag--save-search-symbols-leader-def
 "s" 'save-buffer
 "S" 'evil-write-all)


(provide 'jag-keys-search)

;;; jag-keys-search.el ends here

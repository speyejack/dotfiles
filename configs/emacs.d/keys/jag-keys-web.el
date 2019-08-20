;;; jag-keys-web.el --- Web key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The web key bindings used throughout Emacs

;;; Code:

;; Create the web leader definer
(general-create-definer jag--web-leader-def
  :which-key "Web leader prefix"
  :states '(normal visual operator)
  :prefix (concat jag-leader-key " l")
  :global-prefix (concat jag-emacs-leader-key " l"))

(jag--web-leader-def
 "g" 'engine/search-github
 "s" 'engine/search-stack-overflow
 "w" 'engine/search-wikipedia
 "y" 'engine/search-duckduckgo
 "d" 'engine/search-duckduckgo
 "a" 'engine/search-amazon
 "x" 'xkcd
 "Y" 'engine/search-youtube)

(provide 'jag-keys-web)

;;; jag-keys-web.el ends here

;;; jag-keys-web.el --- Web key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The web key bindings used throughout Emacs

;;; Code:

;; Create the web leader definer
(general-create-definer jag--web-leader-def
  :which-key "Web leader prefix"
  :states '(normal visual operator motion emacs)
  :prefix (concat jag-leader-key " l")
  :global-prefix (concat jag-emacs-leader-key " l"))

(jag--web-leader-def
 "g" 'engine/search-github
 "S" 'engine/search-stack-overflow
 "s" 'howdoyou-query
 "h" 'howdoi-query
 "H" 'howdoi-query-line-at-point
 "w" 'engine/search-wikipedia
 "d" 'engine/search-duckduckgo
 "l" 'engine/search-duckduckgo
 "a" 'engine/search-amazon
 "x" 'xkcd
 "y" 'engine/search-youtube)

(provide 'jag-keys-web)

;;; jag-keys-web.el ends here

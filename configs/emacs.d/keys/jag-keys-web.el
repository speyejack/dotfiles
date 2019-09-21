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

;; Should add duck duck go as suggestion url
(setq helm-google-suggest-search-url "https://duckduckgo.com/?q=%s&t=canonical&atb=v185-2&ia=web")

(jag--web-leader-def
 "g" 'engine/search-github
 "S" 'engine/search-stack-overflow
 "s" 'howdoyou-query
 "h" 'howdoi-query
 "H" 'howdoi-query-line-at-point
 "w" 'engine/search-wikipedia
 "d" 'engine/search-duckduckgo
 "l" 'helm-google-suggest
 "a" 'engine/search-amazon
 "x" 'xkcd
 "y" 'engine/search-youtube)

(provide 'jag-keys-web)

;;; jag-keys-web.el ends here

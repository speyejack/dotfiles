;;; jag-keys-web.el --- Web key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The web key bindings used throughout Emacs

;;; Code:

(jag-create-sub-leader-map jag-leader-map "l" "web")

(jag-declare-prefixes
 '(("l" "web")))

;; Should add duck duck go as suggestion url
(setq helm-google-suggest-search-url "https://duckduckgo.com/?q=%s&t=canonical&atb=v185-2&ia=web")

(jag-define-keys jag-web-map
 "e" 'atomic-chrome-start-server
 "E" 'atomic-chrome-stop-server
 "g" 'engine/search-github
 "S" 'engine/search-stack-overflow
 "s" 'howdoyou-query
 "h" 'howdoi-query
 "H" 'howdoi-query-line-at-point
 "w" 'engine/search-wikipedia
 "d" 'engine/search-duckduckgo
 "l" 'helm-google-suggest
 "L" 'browse-url-at-point
 "a" 'engine/search-amazon
 "x" 'xkcd
 "y" 'engine/search-youtube)

(provide 'jag-keys-web)

;;; jag-keys-web.el ends here

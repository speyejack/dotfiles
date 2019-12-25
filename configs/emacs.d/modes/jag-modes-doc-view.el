;;; jag-modes-doc-view.el --- Config for mode doc-view

;;; Commentary:

;;; Code:

(use-package jag-funcs-doc-view
  :defer t
  :ensure nil)

(use-package doc-view
  :ensure nil
  :bind (:map doc-view-mode-map
		 ("SPC" . nil)
		 ("e" . doc-view-toggle-display)
		 ("j" . doc-view-next-line-or-next-page)
		 ("J" . doc-view-next-page)
		 ("k" . doc-view-previous-line-or-previous-page)
		 ("K" . doc-view-previous-page)
		 ("+" . doc-view-enlarge)
		 ("=" . doc-view-enlarge)
		 ("-" . doc-view-shrink)
		 ("_" . doc-view-shrink)
		 ("g" . nil)
		 ("gg" . doc-view-first-page)
		 ;; TODO Allow page jump to
		 ("G" . doc-view-last-page)
		 ("/" . doc-view-search)
		 ("?" . doc-view-search-backward)
		 ("n" . doc-view-search-next-match)
		 ("N" . doc-view-search-previous-match)
		 ("s" . nil)
		 ("ss" . doc-view-set-slice)
		 ("sm" . doc-view-set-slice-using-mouse)
		 ("sb" . doc-view-set-slice-from-bounding-box)
		 ("S" . doc-view-reset-slice)
		 ("r" . revert-buffer)
		 ("q" . quit-window)
		 ("d" . doc-view-kill-proc))
  :config
  (evil-make-override-map doc-view-mode-map 'normal)
  (add-hook 'doc-view-mode-hook #'evil-normalize-keymaps))

(provide 'jag-modes-doc-view)
;;; jag-modes-doc-view.el ends here

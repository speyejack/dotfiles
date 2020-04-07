;;; jag-modules-helm.el --- Helm packages

;;; Commentary:
;; The packages to use with helm

;;; Code:

;; helm
;;
;; Helm is an Emacs incremental and narrowing framework
;;
;; Source: https://github.com/emacs-helm/helm

(use-package helm
  :diminish
  :bind
  (("C-x C-F" . 'helm-find-files)
   ("C-x C-b" . 'helm-mini)
   ("M-x" . 'helm-M-x)
  :map helm-map
  ("M-l" . 'helm-confirm-and-exit-minibuffer)
  ("M-L" . 'helm-execute-persistent-action)
  ("M-h" . 'evil-delete-backward-word)
  ("M-j" . 'helm-next-line)
  ("M-k" . 'helm-previous-line)
  ("M-J" . 'helm-next-page)
  ("M-K" . 'helm-previous-page)
  ("M-y" . 'helm-yank-selection)
  ("C-M-j" . 'helm-toggle-visible-mark)
  ("C-M-k" . 'helm-toggle-visible-mark)
  ("C-M-a" . 'helm-mark-all)
  ("M-u" . 'helm-previous-page)
  ("M-a" . 'helm-ff-run-complete-fn-at-point)
  ("M-t" . 'helm-toggle-truncate-line)
  ("M-d" . 'helm-next-page)
  ("M-p" . 'evil-paste-after)
  ("M-P" . 'evil-paste-before)
  :map helm-find-files-map
  ("M-h" . 'helm-find-files-up-one-level)
  ("M-L" . 'helm-execute-persistent-action)
  ("M-l" . 'helm-ff-RET)
  :map helm-buffer-map
  ("M-L" . 'helm-buffer-switch-other-window))
  :commands (helm helm-make-source)
  :config
  (helm-mode 1)
  (helm-top-poll-mode 1))

;; helm-ag
;;
;; the silver searcher with helm interface
;;
;; Source: https://github.com/syohex/emacs-helm-ag

(use-package helm-ag
  :commands
  (helm-ag
   helm-do-ag
   helm-do-ag-this-file
   helm-do-ag-buffers
   helm-ag-pop-stack)
  :diminish
  :after helm)

;; helm-rg
;;
;; ripgrep with helm interface
;;
;; Source: https://github.com/cosmicexplorer/helm-rg

(use-package helm-rg
  :commands (helm-rg))

;; helm-flx
;;
;; Sort helm candidates by flx score
;;
;; Source: https://github.com/PythonNut/helm-flx

(use-package helm-flx
  :diminish
  :after helm
  :config
  (helm-flx-mode 1)
  (setq helm-flx-for-helm-find-files t
        helm-flx-for-helm-locate t))

;; helm-descbinds
;;
;; A convenient `describe-bindings' with `helm'
;;
;; Source: https://github.com/emacs-helm/helm-descbinds

(use-package helm-descbinds
  :diminish
  :bind ("<help> b" . helm-descbinds))

;; helm-c-yasnippet
;;
;; helm source for yasnippet.el
;;
;; Source: https://github.com/emacs-jp/helm-c-yasnippet

(use-package helm-c-yasnippet
  :commands 'helm-yas-complete
  :diminish)

;; helm-company
;;
;; Helm interface for company-mode
;;
;; Source: https://github.com/Sodel-the-Vociferous/helm-company

(use-package helm-company
  :commands 'helm-company
  :diminish
  :after company)

;; helm-google
;;
;; Emacs Helm Interface for quick Google searches
;;
;; Source: https://framagit.org/steckerhalter/helm-google

(use-package helm-google
  :commands (helm-google)
  :diminish)

;; helm-gtags
;;
;; GNU GLOBAL helm interface
;;
;; Source: https://github.com/syohex/emacs-helm-gtags

(use-package helm-gtags
  :disabled t
  :commands
  (helm-gtags-mode
   helm-gtags-find-tag
   helm-gtags-create-tags
   helm-gtags-update-tags)
  :diminish
  :after helm)

;; helm-make
;;
;; Select a Makefile target with helm
;;
;; Source: https://github.com/abo-abo/helm-make

(use-package helm-make
  :commands 'helm-make
  :diminish
  :after helm)

;; helm-mode-manager
;;
;; Select and toggle major and minor modes with helm
;;
;; Source: https://github.com/istib/helm-mode-manager

(use-package helm-mode-manager
  :commands
  (helm-switch-major-mode
   helm-enable-minor-mode
   helm-disable-minor-mode)
  :diminish
  :after helm)

;; helm-projectile
;;
;; Helm integration for Projectile
;;
;; Source: https://github.com/bbatsov/helm-projectile

(use-package helm-projectile
  :commands
  (helm-projectile
   helm-projectile-find-file
   helm-projectile-find-dir
   helm-projectile-find-file-dwim
   helm-projectile-recentf
   helm-projectile-switch-to-buffer
   helm-projectile-rg
   helm-projectile-ag
   helm-projectile-grep)
  :diminish)

;; helm-swoop
;;
;; Efficiently hopping squeezed lines powered by helm interface
;;
;; Source: https://github.com/ShingoFukuyama/helm-swoop

;; TODO Edit commands to allow for better use of swoop edit mode
(use-package helm-swoop
  :commands (helm-swoop
			 helm-multi-swoop-all
			 helm-multi-swoop-current-mode
			 helm-mutli-swoop)
  :diminish)

;; ace-jump-helm-line
;;
;; Ace-jump to a candidate in helm window
;;
;; Source: https://github.com/cute-jumper/ace-jump-helm-line

(use-package ace-jump-helm-line
  :bind
  (:map helm-map
   ("M-f" . 'ace-jump-helm-line))
  :diminish
  :config
  (setq ace-jump-helm-line-style 'pre)
  (setq ace-jump-helm-line-default-action 'select)
  (setq ace-jump-helm-line-select-key ?e) ;; this line is not needed
  ;; Set the move-only and persistent keys
  (setq ace-jump-helm-line-move-only-key ?o)
  (setq ace-jump-helm-line-persistent-key ?p)
  :after helm)


;; helm-unicode
;;
;; Adds ability to use unicode to helm
;;
;; Source: https://github.com/bomgar/helm-unicode
(use-package helm-unicode
  :commands 'helm-unicode
  :after helm)

;; helm-xref
;;
;; Helm interface for xref results
;;
;; Source: https://github.com/brotzeit/helm-xref
(use-package helm-xref
  :diminish
  :after helm
  :init
  (if (< emacs-major-version 27)
	  (setq xref-show-xrefs-function 'helm-xref-show-xrefs)
	(progn
	  (setq xref-show-xrefs-function 'helm-xref-show-xrefs-27)
	  (setq xref-show-definitions-function 'helm-xref-show-defs-27)))
  :commands (helm-xref-show-xrefs
			 helm-xref-show-xrefs-27
			 helm-xref-show-defs-27))

(provide 'jag-modules-helm)
;;; jag-modules-helm.el ends here

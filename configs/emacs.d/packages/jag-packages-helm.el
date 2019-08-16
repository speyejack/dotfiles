;;; jag-packages-helm.el ---

;;; Commentary:

;;; Code:

;; helm
;;
;; Helm is an Emacs incremental and narrowing framework
;;
;; Source: https://github.com/emacs-helm/helm

(use-package helm
  :diminish
  :general
  ("C-x C-F" 'helm-find-files)
  ("C-x C-b" 'helm-mini)
  ("M-x" 'helm-M-x)
  (:keymaps 'helm-map
   "M-j" 'helm-next-line
   "M-k" 'helm-previous-line
   "M-u" 'helm-previous-page
   "M-d" 'helm-next-page)
  (:keymaps 'helm-find-files-map
   "M-h" 'helm-find-files-up-one-level
   "M-l" 'helm-ff-RET)
  (jag--leader-def
    "b"  'helm-mini             ;; Switch to another buffer
    "SPC"  'helm-M-x
    "p"  'helm-show-kill-ring
    "f" 'helm-imenu)
  :config
  (helm-mode 1))

;; helm-ag
;;
;; the silver searcher with helm interface
;;
;; Source: https://github.com/syohex/emacs-helm-ag

(use-package helm-ag
  :commands
  (helm-ag
   helm-do-ag
   helm-ag-this-file
   helm-do-ag-this-file
   helm-ag-project-root
   helm-do-ag-project-root
   helm-ag-buffers
   helm-do-ag-buffers
   helm-ag-pop-stack
   helm-ag-clear-stack)
  :general
  (jag--leader-def "S" 'helm-do-ag)
  :diminish
  :after helm)

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
  :bind ("<help> k" . helm-descbinds)
  :config
  (helm-descbinds-mode))

;; helm-c-yasnippet
;;
;; helm source for yasnippet.el
;;
;; Source: https://github.com/emacs-jp/helm-c-yasnippet

;; (use-package helm-c-yasnippet
;;   :general
;;   (jag--leader-def "Yh" 'helm-yas-complete)
;;   :diminish)

;; helm-company
;;
;; Helm interface for company-mode
;;
;; Source: https://github.com/Sodel-the-Vociferous/helm-company

(use-package helm-company
  :commands 'helm-company
  :diminish
  :after company
  :bind (:map company-mode-map
         ("C-'" . helm-company)
         :map company-active-map
         ("C-'" . helm-company)))

;; helm-gitignore
;;
;; Generate .gitignore files with gitignore.io.
;;
;; Source: https://github.com/jupl/helm-gitignore

(use-package helm-gitignore
  :disabled t
  :commands 'helm-gitignore
  :diminish
  :after helm)

;; helm-google
;;
;; Emacs Helm Interface for quick Google searches
;;
;; Source: https://framagit.org/steckerhalter/helm-google

(use-package helm-google
  :general
  (jag--leader-def "l" 'helm-google)
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
  :disabled t
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
  :general
  (jag--leader-def "P" 'helm-projectile)
  (jag--leader-def "sa" 'helm-projectile-ag)
  :diminish
  :config
  (helm-projectile-on))

;; helm-swoop
;;
;; Efficiently hopping squeezed lines powered by helm interface
;;
;; Source: https://github.com/ShingoFukuyama/helm-swoop

(use-package helm-swoop
  :general
  (jag--leader-def "/"  'helm-swoop)
  :commands 'helm-swoop
  :diminish)

;; ace-jump-helm-line
;;
;; Ace-jump to a candidate in helm window
;;
;; Source: https://github.com/cute-jumper/ace-jump-helm-line

(use-package ace-jump-helm-line
  :general
  (:keymaps 'helm-map
   "M-f" 'ace-jump-helm-line)
  :diminish
  :config
  (setq ace-jump-helm-line-style 'pre)
  (setq ace-jump-helm-line-default-action 'select)
  (setq ace-jump-helm-line-select-key ?e) ;; this line is not needed
  ;; Set the move-only and persistent keys
  (setq ace-jump-helm-line-move-only-key ?o)
  (setq ace-jump-helm-line-persistent-key ?p)
  :after helm)

(provide 'jag-packages-helm)
;;; jag-packages-helm.el ends here

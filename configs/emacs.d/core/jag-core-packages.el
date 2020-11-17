;; jag-core-packages.el ---- Core packages

;;; Commentary:
;; Adds the core packages used by Emacs config

;;; Code:

(defun jag-fix-verification ()
  "Download new gnu keys to fix package verification problem."
  (interactive)
  (setq package-check-signature nil)
  (package-refresh-contents)
  (package-install 'gnu-elpa-keyring-update)
  (setq package-check-signature t)
  (error "Disabled security to install new keys.  Please restart"))

;; Install straight.el, functional package manager
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

;; Require use-package
(eval-when-compile
  (require 'use-package))

;; Enabled ensure for everything
(setq straight-use-package-by-default t)
;; (setq use-package-compute-statistics t)

;; gcmh
;;
;; Magic hack for garbage collector to only perform when user inactive
;;
;; Source: https://akrl.sdf.org/
(use-package gcmh
  :demand
  :diminish
  :config
  (gcmh-mode t))

;; hydra
;;
;; make Emacs bindings that stick around
;;
;; Source: https://github.com/abo-abo/hydra
(use-package hydra
  :diminish
  :commands (defhydra))

;; which-key
;;
;; Display available keybindings in popup
;;
;; Source: https://github.com/justbur/emacs-which-key

(use-package which-key
  :diminish
  :init

  (setq which-key-idle-delay 0.5)

  :config
  (which-key-mode))

(provide 'jag-core-packages)
;;; jag-core-packages ends here

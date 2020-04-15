;; jag-core-packages.el ---- Core packages

;;; Commentary:
;; Adds the core packages used by Emacs config

;;; Code:
(package-initialize)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))

(defun jag-fix-verification ()
  "Download new gnu keys to fix package verification problem."
  (interactive)
  (setq package-check-signature nil)
  (package-refresh-contents)
  (package-install 'gnu-elpa-keyring-update)
  (setq package-check-signature t)
  (error "Disabled security to install new keys.  Please restart"))

;; Install use-package if not installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Require use-package
(eval-when-compile
  (require 'use-package))

;; Enabled ensure for everything
(setq use-package-always-ensure t)
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

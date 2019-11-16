;; jag-core-packages.el ---- Core packages

;;; Commentary:
;; Adds the core packages used by Emacs config

;;; Code:
(package-initialize)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives '("elpy" . "https://jorgenschaefer.github.io/packages/"))


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

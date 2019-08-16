;; jag-core-packages.el ---- Core packages

;;; Commentary:
;; Adds the core packages used by Emacs config

;;; Code:

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


(provide 'jag-core-packages)
;;; jag-core-packages ends here

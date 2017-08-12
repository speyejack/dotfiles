;;; init-use-package.el --- Package description
;;; Commentary:

;;; Code:
(unless (package-installed-p 'use-package)
  (package-refresh-content)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(provide 'init-use-package)
;;; init-use-package.el ends here

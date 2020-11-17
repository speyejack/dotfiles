;;; jag-modes-yaml.el --- Config for mode yaml

;;; Commentary:

;;; Code:

(use-package jag-funcs-yaml
  :defer t
  :straight nil)

(use-package yaml-mode
  :commands 'yaml-mode)

(provide 'jag-modes-yaml)
;;; jag-modes-yaml.el ends here

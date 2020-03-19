;;; jag-modes-docker.el --- Config for mode docker

;;; Commentary:

;;; Code:

(use-package jag-funcs-docker
  :defer t
  :ensure nil)

(use-package docker
  :commands 'docker)

(provide 'jag-modes-docker)
;;; jag-modes-docker.el ends here

;;; jag-modes-java.el ---

;;; Commentary:

;;; Code:

;; company-emacs-eclim
;;
;; company-mode backend for eclim
;;
;; Source: https://github.com/emacs-eclim/emacs-eclim

(use-package company-emacs-eclim
  :disabled t
  :commands 'java-mode
  :diminish)

;; eclim
;;
;; An interface to the Eclipse IDE.
;;
;; Source: https://github.com/emacs-eclim/emacs-eclim

(use-package eclim
  :disabled t
  :commands 'java-mode
  :diminish)

(provide 'jag-modes-java)
;;; jag-modes-java.el ends here

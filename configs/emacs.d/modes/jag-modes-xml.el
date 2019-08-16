;;; jag-modes-xml.el ---

;;; Commentary:

;;; Code:

;; nxml
;;
;; Nxml mode that's installed by default
;;
;; Source: https://www.emacswiki.org/emacs/NxmlMode

(add-to-list 'auto-mode-alist
             (cons (concat "\\." (regexp-opt '("launch") t) "\\'")
                   'nxml-mode))
(add-hook 'nxml-mode-hook
          (lambda ()
            (make-variable-buffer-local 'indent-tabs-mode)
            (setq indent-tabs-mode nil)))


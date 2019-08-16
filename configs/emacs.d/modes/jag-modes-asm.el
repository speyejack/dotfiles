;;; jag-modes-asm.el ---

;;; Commentary:

;;; Code:

;; asm-mode
;;
;; Asm major mode for emacs
;;
;; Source: https://www.gnu.org/software/emacs/manual/html_node/emacs/Asm-Mode.html

(use-package asm-mode
  :disabled t
  :commands 'asm-mode
  :diminish)

;; nasm-mode
;;
;; NASM x86 assembly major mode
;;
;; Source: https://github.com/skeeto/nasm-mode

(use-package nasm-mode
  :disabled t
  :commands 'nasm-mode
  :diminish)

;; x86-lookup
;;
;; jump to x86 instruction documentation
;;
;; Source: https://github.com/skeeto/x86-lookup

(use-package x86-lookup
  :disabled t
  :commands 'x86-lookup
  :diminish)

(provide 'jag-modes-asm)
;;; jag-modes-asm.el ends here

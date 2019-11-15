;;; jag-modes-comint.el --- Config for mode comint

;;; Commentary:

;;; Code:

(use-package jag-funcs-comint
  :ensure nil
  :bind
   (:map comint-mode-map
   ("M-j" . 'comint-next-input)
   ("M-k" . 'comint-previous-input)
   ;; Test to see which one I use more
   ("M-J" . 'comint-next-prompt)
   ("M-g M-j" . 'comint-next-prompt)
   ("M-K" . 'comint-previous-prompt)
   ("M-g M-k" . 'comint-previous-prompt)))


(provide 'jag-modes-comint)
;;; jag-modes-comint.el ends here

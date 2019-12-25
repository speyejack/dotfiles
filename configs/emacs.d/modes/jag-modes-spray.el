;;; jag-modes-spray.el --- Spray mode

;;; Commentary:

;;; Code:

;; spray
;;
;; a speed reading mode
;;
;; Source: https://gitlab.com/iankelling/spray

;; TODO Remove cursor during spray mode
(use-package spray
  :commands spray-mode
  :bind
  (:map spray-mode-map
   ("p" . 'spray-start/stop)
   ("q" . 'spray-quit)
   ("k" . 'spray-faster)
   ("j" . 'spray-slower)
   ("l" . 'spray-forward-word)
   ("L" . 'spray-start)
   ("h" . 'spray-backward-word)
   ("H" . 'spray-stop)
   ("c" . 'jag-disable-cursor)
   ("t" . 'spray-time))
   :diminish
   :config
  (defun jag-disable-cursor ()
	(interactive)
	(setq cursor-type nil))
  (evil-make-override-map spray-mode-map)
  (add-hook 'spray-mode-hook #'evil-normalize-keymaps)
  (add-hook 'spray-mode-hook 'jag-disable-cursor))


(provide 'jag-modes-spray)
;;; jag-modes-spray.el ends here

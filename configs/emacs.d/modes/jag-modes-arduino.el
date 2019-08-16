;;; jag-modes-arduino.el ---

;;; Commentary:

;;; Code:

;; arduino-mode
;;
;; Arduino mode used for editing ino files
;;
;; Source: https://github.com/bookest/arduino-mode

(use-package arduino-mode
  :mode "\\.ino\\'"
  :commands arduino-mode
  :config
  (add-hook 'arduino-mode-hook
            (lambda ()
              (progn
                (setq-local tab-width 2)
                (setq-local indent-tabs-mode nil))))
  :diminish)

(provide 'jag-modes-arduino)
;;; jag-modes-arduino.el ends here

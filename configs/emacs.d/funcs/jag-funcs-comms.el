;;; jag-funcs-comms.el --- Functions for comms

;;; Commentary:

;;; Code:

(use-package eshell
  :ensure nil
  :commands 'eshell/cat)

(defun jag--begin-decrypt-mail-pass ()
  "Caches the decryption key for the mail passwords."
  (shell-command (concat "gpg -d  ~/.offlineimappass.gpg > /dev/null 2>&1"))
  t)

(defun jag-decrypt-and-update-mail (BACKGROUND)
	"Decrypt the password file and have mu4e index and update the mail."

  (interactive "P")
  (jag--begin-decrypt-mail-pass)
  (mu4e-update-mail-and-index BACKGROUND))

(provide 'jag-funcs-comms)
;;; jag-funcs-comms.el ends here

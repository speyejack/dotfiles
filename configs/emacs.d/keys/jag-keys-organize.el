;;; jag-keys-organize.el --- Config for key organize

;;; Commentary:

;;; Code:

;; Create the organize leader definer
(general-create-definer jag--organize-leader-def
  :which-key "organize leader prefix"
  :states '(normal visual operator)
  :prefix (concat jag-leader-key " o")
  :global-prefix (concat jag-emacs-leader-key " o"))

(use-package jag-funcs-organize
  :ensure nil
  :general
  (jag--organize-leader-def
	"a" 'org-agenda
	"o" 'jag--quick-org-task-capture
	"O" 'org-projectile-capture-for-current-project
	"r" 'evil-operator-remember
	"R" 'remember
	"c" 'evil-operator-org-capture
	"C" 'org-capture))

(provide 'jag-keys-organize)
;;; jag-keys-organize.el ends here

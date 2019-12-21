;;; jag-funcs-wm.el --- Functions for window managers

;;; Commentary:

;;; Code:

(defun jag-run-exwm ()
  "Start exwm."
  (interactive)

  (use-package exwm
	:defer nil
	:config

	(require 'exwm-core)
	;; Set the initial workspace number.
	(unless (get 'exwm-workspace-number 'saved-value)
	  (setq exwm-workspace-number 4))
	;; Make class name the buffer name
	(add-hook 'exwm-update-class-hook
			  (lambda ()
				(exwm-workspace-rename-buffer exwm-class-name)))
	;; Global keybindings.
	(unless (get 'exwm-input-global-keys 'saved-value)
	  (setq exwm-input-global-keys
			`(
			  ([?\s-\ ] . jag-leader-map)
			  ;; Navigation
			  ([?\s-h] . evil-window-left)
			  ([?\s-j] . evil-window-down)
			  ([?\s-k] . evil-window-up)
			  ([?\s-l] . evil-window-right)
			  ;; Move
			  ([?\s-H] . evil-window-move-far-left)
			  ([?\s-J] . evil-window-move-very-bottom)
			  ([?\s-K] . evil-window-move-very-top)
			  ([?\s-L] . evil-window-move-far-right)

			  ([?\s-\;] . evil-window-split)
			  ([?\s-v] . evil-window-vsplit)
			  ;; Temporary switch buffer
			  ([?\s-b] . helm-mini)

			  ([?\s-l] . eshell)
			  ;; Quit
			  ([?\s-q] . jag-kill-this-buffer)
			  ;; 's-r': Reset (to line-mode).
			  ([?\s-r] . exwm-reset)
			  ;; 's-w': Switch workspace.
			  ([?\s-w] . exwm-workspace-switch)
			  ;; 's-&': Launch application.
			  ([?\s-d] . (lambda (command)
						   (interactive (list (read-shell-command "$ ")))
						   (start-process-shell-command command nil command)))
			  (,(kbd "s-RET") . eshell)

			  ,@(mapcar (lambda (i)
						  `(,(kbd (format "s-%d" (cdr i))) .
							(lambda ()
							  (interactive)
							  (exwm-workspace-switch-create ,(car i)))))
						(-zip-pair (append ")!@#$%^&*(" nil)(number-sequence 0 9)))
			  ;; 's-N': Switch to certain workspace.
			  ,@(mapcar (lambda (i)
						  `(,(kbd (format "s-%d" i)) .
							(lambda ()
							  (interactive)
							  (exwm-workspace-switch-create ,i))))
						(number-sequence 0 9)))))
	;; Line-editing shortcuts
	(unless (get 'exwm-input-simulation-keys 'saved-value)
	  (setq exwm-input-simulation-keys
			'(([?\M-h] . [left])
			  ([?\M-l] . [right])
			  ([?\M-k] . [up])
			  ([?\M-j] . [down])
			  ([?\M-g M-h] . [home])
			  ([?\M-g M-l] . [end])
			  ([?\M-K] . [prior])
			  ([?\M-J] . [next])
			  ([?\M-d] . [delete])
			  ([?\M-D] . [S-end delete]))))
	;; Enable EXWM
	(exwm-enable)))


(provide 'jag-funcs-wm)
;;; jag-funcs-wm.el ends here

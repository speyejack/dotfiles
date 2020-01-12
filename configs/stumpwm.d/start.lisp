(set-prefix-key (kbd "C-M-Z"))
(setf *mouse-focus-policy* :click)
(setf *window-border-style* :none)

(defun jag-define-keys (keymap key def &rest bindings)
  "In KEYMAP define KEY to DEF as well as all BINDINGS.
`kbd' is applied to all KEYs.  BINDINGS is additional KEY-DEF pairs.
Always defines <escape> and <C-g> as `keyboard-quit'."
  (loop while key do
		(progn
		  (define-key keymap (kbd key) def)
		  (setq key (pop bindings))
		  (setq def (pop bindings)))))


(defmacro jag-define-map (map-name &rest bindings)
  (let ((m (make-sparse-keymap)))
	`(progn
	   (defparameter ,map-name
		 ,m)
	   (if (listp ',bindings)
	   (apply 'jag-define-keys '(,m . ,bindings))))))

(dolist (num-pair '((1 . "!") (2 . "@") (3 . "#")
					(4 . "$") (5 . "%") (6 . "^")
					(7 . "&") (8 . "*") (9 . "(") (0 . ")")))
  (let ((num (car num-pair)) (num-cap (cdr num-pair)))
	(gnewbg (format nil "~D" num))
	(define-key *top-map*
	  (kbd (format nil "s-~D" num))
	  (format nil "gselect ~D" num))
	(define-key *top-map*
	  (kbd (format nil "s-~A" num-cap))
	  (format nil "gmove ~D" num))))

(defcommand jag-run-emacs () ()
  "Raise or run emacs"
  (run-or-raise "emacs" '(:class "Emacs")))

(defcommand jag-run-firefox () ()
  "Raise or run firefox"
  (run-or-raise "firefox" '(:class "firefox")))

(jag-define-map *leader-map*
 "s-SPC" "mode-line"
 "h" *HELP-MAP*
 "g" *GROUPS-MAP*
 "x" *EXCHANGE-WINDOW-MAP*)

(jag-define-map *power-map*
 "l" "exec i3lock -c 000000;exec xset dpms force off"
 "e" "quit"
 "s" "exec systemctl halt"
 "r" "exec systemctl reboot"
 "S" "exec systemctl halt")

(jag-define-map *exec-map*
 "e" "jag-run-emacs"
 "f" "jag-run-firefox"
 "s-g" "abort")

(defcommand jag-reload () ()
  "Reloads the configuration file."
  (load "~/.stumpwm.d/init.lisp"))

(jag-define-keys *top-map*
 "s-h" "move-focus left"
 "s-j" "move-focus down"
 "s-k" "move-focus up"
 "s-l" "move-focus right"

 "s-H" "move-window left"
 "s-J" "move-window down"
 "s-K" "move-window up"
 "s-L" "move-window right"

 "s-d" "exec"
 "s-RET" "exec x-terminal-emulator"
 "s-SPC" *leader-map*
 "s-G" "abort"
 "s-g" *exec-map*

 "s-b" "windowlist"

 "s-i" "info"
 "s-I" "show-window-properties"
 "s-\\" "jag-reload"
 "s-|" "reload"

 "s-q" "delete"
 "s-Q" "kill"

 "s-s" "hsplit"
 "s-S" "vsplit"

 "s-r" "remove"
 "s-R" "iresize"

 "s-f" "fullscreen"

 "s-:" "eval"
 "s-=" "balance-frames"

 "s-w" *power-map*

 "s-?" "which-key-mode"

 "s-o" "only"
 "s-a" "time")

;;; start.el --- Emacs Initialization File
;;
;; Copyright (c) 2019 Jack Garrard
;;
;; Author: Jack Garrard <speyejack@gmail.com>
;; URL: https://github.com/speyejack/dotfiles
;;
;; This file is not part of GNU Emacs.

;;; Commentary:

;;; Code:

;; Prevent emacs from auto adding this
;; (package-initialize)

;; Make startup faster by reducing the frequency of garbage
;; collection.  The default is 0.8MB.  Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))
;; Portion of heap used for allocation.  Defaults to 0.1.
(setq gc-cons-percentage 0.6)

;; Create the root dir for the config file
(defconst jag-dir
  (expand-file-name
   (if load-file-name
	   (file-name-directory load-file-name)
	 "~/.emacs.d/"))
  "The root dir of the config file.")

(setq user-emacs-directory jag-dir)

;; Add the core, the core will populate everything else
(add-to-list 'load-path (expand-file-name "core" jag-dir))

;; Core
(require 'jag-core-constants)
(require 'jag-core-settings)
(require 'jag-core-packages)
(require 'jag-core-keybindings)

;; Packages
(require 'jag-modules-evil)
(require 'jag-modules-emacs)
(require 'jag-modules-helm)
(require 'jag-modules-git)
(require 'jag-modules-autocomplete)
(require 'jag-modules-correction)
(require 'jag-modules-text)
(require 'jag-modules-utility)
(require 'jag-modules-web)
(require 'jag-modules-visual)
(require 'jag-modules-fun)

;; Modes
(require 'jag-modes-arduino)
(require 'jag-modes-ibuffer)
(require 'jag-modes-calc)
(require 'jag-modes-comint)
(require 'jag-modes-doc-view)
(require 'jag-modes-emacs-lisp)
(require 'jag-modes-eshell)
(require 'jag-modes-gdb)
(require 'jag-modes-gud)
(require 'jag-modes-hexl)
(require 'jag-modes-info)
(require 'jag-modes-julia)
(require 'jag-modes-lua)
(require 'jag-modes-org)
(require 'jag-modes-pdb)
(require 'jag-modes-python)
(require 'jag-modes-realgud)
(require 'jag-modes-spray)
(require 'jag-modes-special)
(require 'jag-modes-term)
(require 'jag-modes-xkcd)
(require 'jag-modes-xml)
(require 'jag-modes-yaml)


;; Make gc pauses faster by decreasing the threshold.
(setq gc-cons-threshold (* 2 1000 1000))

;; Use a hook so the message doesn't get clobbered by other messages.
(add-hook 'emacs-startup-hook
		  (lambda ()
			(message "Emacs ready in %s"
					 (format "%.2f seconds"
							 (float-time
							  (time-subtract after-init-time
											 before-init-time))))))

(provide 'start)
;;; start.el ends here

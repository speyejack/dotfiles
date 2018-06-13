;; Init file taken from github user: Iarstvei
;; This file replaces itself with the actual conviguration at first run.

;; We can't tangle without org!
(require 'org)
;; Open the configuration
(find-file (concat user-emacs-directory "init.org"))
;; tangle it
(org-babel-tangle)
;; kill it
(kill-buffer)
;; load it
(load-file (concat user-emacs-directory "init.el"))
;; finally byte-compile it
;; Temporary disabled while configuring
;; (byte-compile-file (concat user-emacs-directory "init.el"))

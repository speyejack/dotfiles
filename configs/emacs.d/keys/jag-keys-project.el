;;; jag-keys-project.el --- Project key bindings -*- lexical-binding: t -*-

;;; Commentary:

;; The project key bindings used throughout Emacs

;;; Code:

(use-package jag-funcs-project
  :defer t
  :commands 'jag-helm-projectile-search
  :ensure nil)

(jag-create-sub-leader-map jag-leader-map "p" "project")

(jag-declare-prefixes
 '(("p" "project")))

(jag-define-keys jag-project-map
  jag-leader-key 'helm-projectile
  "!" 'projectile-run-shell-command-in-root
  "%" 'projectile-replace-regexp
  "&" 'projectile-run-async-shell-command-in-root
  "D" 'projectile-dired
  "F" 'helm-projectile-find-file-dwim
  "G" 'projectile-regenerate-tags
  "I" 'projectile-invalidate-cache
  "R" 'projectile-replace
  "T" 'projectile-test-project
  "a" 'projectile-toggle-between-implementation-and-test
  "b" 'helm-projectile-switch-to-buffer
  "c" 'projectile-compile-project
  "d" 'helm-projectile-find-dir
  "f" 'helm-projectile-find-file
  "g" 'projectile-find-tag
  "k" 'projectile-kill-buffers
  "p" 'projectile-switch-project
  "r" 'helm-projectile-recentf
  "s" 'jag-helm-projectile-search
  "v" 'projectile-vc)

(provide 'jag-keys-project)

;;; jag-keys-project.el ends here

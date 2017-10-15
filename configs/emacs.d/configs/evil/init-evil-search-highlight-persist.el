;;; init-evil-search-highlight-persist.el --- Allows-for-the-search-highlighting-to-persist
;;; Commentary:

;;; Code:

(defun jag--add-evil-search-highlight-persist-hooks ()
  "Add hooks to evil-search-highlight-persist."
  (jag--add-evil-search-highlight-persist-key-hooks)
  (jag--add-evil-search-highlight-persist-other-hooks))

(defun jag--add-evil-search-highlight-persist-key-hooks ()
  "Add keyboard hooks to evil-search-highlight-persist.")

(defun jag--add-evil-search-highlight-persist-other-hooks ()
  "Add other hooks to evil-search-highlight-persist.")

(defun jag--set-evil-search-highlight-persist-key-bindings ()
  "Set up keybindings for evil-search-highlight-persist.")

(defun jag--setup-evil-search-highlight-persist-config ()
  "Set up personal configuation for evil-search-highlight-persist.")

(defun jag--load-evil-search-highlight-persist-requires ()
  "Load required sub packages for evil-search-highlight-persist.")

(use-package evil-search-highlight-persist
  :init
  (jag--load-evil-search-highlight-persist-requires)
  (jag--add-evil-search-highlight-persist-hooks)
  :ensure t
  :disabled
  :config
  (jag--set-evil-search-highlight-persist-key-bindings)
  (jag--setup-evil-search-highlight-persist-config))

(provide 'init-evil-search-highlight-persist)
;;; init-evil-search-highlight-persist.el ends here

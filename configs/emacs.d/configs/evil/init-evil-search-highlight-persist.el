;;; init-evil-search-highlight-persist.el --- Allows-for-the-search-highlighting-to-persist
;;; Commentary:

;;; Code:

(defun jag--set-evil-search-highlight-persist-key-bindings ()
  "Set up keybindings for evil-search-highlight-persist.")

(defun jag--setup-evil-search-highlight-persist-config ()
  "Set up personal configuation for evil-search-highlight-persist.")

(defun jag--load-evil-search-highlight-persist-requires ()
  "Load required sub packages for evil-search-highlight-persist.")

(use-package evil-search-highlight-persist
  :ensure t
  :config
  (jag--load-evil-search-highlight-persist-requires)
  (jag--set-evil-search-highlight-persist-key-bindings)
  (jag--setup-evil-search-highlight-persist-config))

(provide 'init-evil-search-highlight-persist)
;;; init-evil-search-highlight-persist.el ends here

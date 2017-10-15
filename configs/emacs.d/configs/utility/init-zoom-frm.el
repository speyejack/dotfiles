;;; init-zoom-frm.el --- Zoom-font-size
;;; Commentary:

;;; Code:

(defun jag--add-zoom-frm-hooks ()
  "Add hooks to zoom-frm."
  (jag--add-zoom-frm-key-hooks)
  (jag--add-zoom-frm-other-hooks))

(defun jag--add-zoom-frm-key-hooks ()
  "Add keyboard hooks to zoom-frm.")

(defun jag--add-zoom-frm-other-hooks ()
  "Add other hooks to zoom-frm.")

(defun jag--set-zoom-frm-key-bindings ()
  "Set up keybindings for zoom-frm.")

(defun jag--setup-zoom-frm-config ()
  "Set up personal configuation for zoom-frm.")

(defun jag--load-zoom-frm-requires ()
  "Load required sub packages for zoom-frm.")

(use-package zoom-frm
  :init
  (jag--load-zoom-frm-requires)
  (jag--add-zoom-frm-hooks)
  :ensure t
  :defer t
  :config
  (jag--set-zoom-frm-key-bindings)
  (jag--setup-zoom-frm-config))

(provide 'init-zoom-frm)
;;; init-zoom-frm.el ends here

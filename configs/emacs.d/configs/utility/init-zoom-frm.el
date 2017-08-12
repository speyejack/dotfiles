;;; init-zoom-frm.el --- Zoom-font-size
;;; Commentary:

;;; Code:

(defun jag--set-zoom-frm-key-bindings ()
  "Set up keybindings for zoom-frm.")

(defun jag--setup-zoom-frm-config ()
  "Set up personal configuation for zoom-frm.")

(defun jag--load-zoom-frm-requires ()
  "Load required sub packages for zoom-frm.")

(use-package zoom-frm
  :ensure t
  :config
  (jag--load-zoom-frm-requires)
  (jag--set-zoom-frm-key-bindings)
  (jag--setup-zoom-frm-config))

(provide 'init-zoom-frm)
;;; init-zoom-frm.el ends here

;;; jag-funcs-configuring.el --- Functions for configuring

;;; Commentary:

;;; Code:

(use-package s
  :commands s-join)

(defun jag-new-general-module (name)
  "Create a new general module with NAME."
  (interactive (list (read-string "New general module name: ")))

  (jag--new-general-module-file name)
  (jag--new-funcs-file name))

(defun jag-new-mode-module (name)
  "Create a new mode module with NAME."
  (interactive (list (read-string "New mode module name: ")))

  (jag--new-mode-module-file name)
  (jag--new-func-module-file name))

(defun jag-new-key-module (name leader-key)
  "Create a new key module with NAME accessed by LEADER-KEY."
  (interactive (list (read-string "New key module name: ") (read-string "Leader key: ")))

  (jag--new-key-module-file name leader-key)
  (jag--new-func-module-file name))


(defvar jag-general-module-body-template
  (s-join
   "\n"
   (list
	"(use-package %s"
	":ensure nil"
	"  )"))
  "The template used to create a new general module.
The template will be formatted with (format template func-module)"
  )

(defvar jag-mode-module-body-template
  (s-join
   "\n"
   (list
	"(use-package %s"
	":ensure nil"
	"  )"))
  "The template used to create a new mode module.
The template will be formatted with (format template name func-module)"
  )

(defvar jag-key-module-body-template
  (s-join
   "\n"
   (list
	";; Create the %1$s leader definer"
	"(general-create-definer jag--%1$s-leader-def"
	"  :which-key \"%1$s leader prefix\""
	"  :states '(normal visual operator)"
	"  :prefix (concat jag-leader-key \" %2$s\")"
	"  :global-prefix (concat jag-emacs-leader-key \" %2$s\"))"
	""
	"(use-package %3$s"
	"  :ensure nil"
	"  :commands ())"
	""
	"(jag--%1$s-leader-def"
	"  )"
	))
  "The template used to create a new key module.
The template will be formatted with the (format template name binding func-module)"
  )


(defun jag--new-general-module-file (name)
  "Create new general module file with NAME."
  (jag--new-template-file name "modules" "Config for general module %s" jag-modules-dir
						  (format jag-general-module-body-template (jag--new-module-name "funcs" name ))))

(defun jag--new-mode-module-file (name)
  "Create new mode module file with NAME."
  (jag--new-template-file name "modes" "Config for mode %s" jag-modes-dir
						  (format jag-mode-module-body-template name (jag--new-module-name "funcs" name ))))

(defun jag--new-key-module-file (name leader-key)
  "Create new key module file with NAME."
  (jag--new-template-file name "keys" "Config for key %s" jag-keys-dir
						  (format jag-key-module-body-template name leader-key (jag--new-module-name "funcs" name ))))

(defun jag--new-func-module-file (name)
  "Create new func file for module NAME."
  (jag--new-template-file name "funcs" "Functions for %s" jag-funcs-dir))


(defun jag--new-template-file (name type desc dir &optional body)
  "Create module NAME of TYPE in DIR  with DESC and BODY."
  (let* ((full-name (jag--new-template-name type name))
		 (path (jag--new-template-path dir full-name))
		 (full-desc (format desc name))
		 (template (jag--new-template-string full-name full-desc body)))
	(jag--new-template-file-creation path template)))

(defun jag--new-template-path (dir name)
  "Return the path for module NAME of TYPE in DIR."
  (concat dir "/" name ".el"))

(defun jag--new-template-file-creation (file-path template)
  "Create a new template file at FILE-PATH using TEMPLATE."
  (if (file-exists-p file-path)
	(error "File `%s' already exists" file-path)
  (find-file file-path)
  (insert template)
  (indent-region (point-min) (point-max))
  ;(save-buffer)
  ))

(defun jag--new-template-name (type name)
  "Generate full module name from TYPE and NAME."
  (format "jag-%s-%s" type name))

(defun jag--new-template-string (name desc &optional body)
  "Create a module template of NAME and DESC and fills in BODY with NAME."
  (s-join
	 "\n"
	 (list
	  (format ";;; %s.el --- %s" name desc)
	  ""
	  ";;; Commentary:"
	  ""
	  ";;; Code:"
	  ""
	  (or body "")
	  ""
	  (format "(provide '%s)" name)
	  (format ";;; %s.el ends here" name))))

(provide 'jag-funcs-configuring)
;;; jag-funcs-configuring.el ends here

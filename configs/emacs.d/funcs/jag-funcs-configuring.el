;;; jag-funcs-configuring.el --- Functions for configuring

;;; Commentary:

;;; Code:

(use-package s
  :commands s-join)

(defun jag-new-general-module (name)
  "Create a new general and func module with NAME."
  (interactive (list (read-string "New general module name: ")))

  (jag--new-test-module-file name)
  (jag--new-func-module-file name)
  (jag--new-general-module-file name))

(defun jag-new-mode-module (name)
  "Create a new mode and func module with NAME."
  (interactive (list (read-string "New mode module name: ")))

  (jag--new-test-module-file name)
  (jag--new-func-module-file name)
  (jag--new-mode-module-file name))

(defun jag-new-key-module (name leader-key)
  "Create a new key and func module with NAME accessed by LEADER-KEY."
  (interactive (list (read-string "New key module name: ") (read-string "Leader key: ")))

  (jag--new-test-module-file name)
  (jag--new-func-module-file name)
  (jag--new-key-module-file name leader-key))

(defun jag-new-func-module (name)
  "Create a new func module with NAME."
  (interactive (list (read-string "New func module name: ")))

  (jag--new-test-module-file name)
  (jag--new-func-module-file name))

(defvar jag-general-module-body-template
  (s-join
   "\n"
   (list
	"(use-package %2$s"
	"  :defer t"
	"  :straight nil)"
	""
	"(use-package %1$s"
	"    )"))
  "The template used to create a new general module.
The template will be formatted with (format template func-module)")

(defvar jag-mode-module-body-template
  (s-join
   "\n"
   (list
	"(use-package %2$s"
	"  :defer t"
	"  :straight nil)"
	""
	"(use-package %1$s"
	"    )"))
  "The template used to create a new mode module.
The template will be formatted with (format template name func-module)")

(defvar jag-key-module-body-template
  (s-join
   "\n"
   (list
	";; Create the %1$s leader definer"
	"(jag-create-sub-leader-map jag-leader-map \"%3$s\" \"%1$s\")"
	""
	"(jag-declare-leader-prefixes"
	" '((\"%3$s\" \"%1$s\")))"
	""
	"(use-package %2$s"
	"  :straight nil"
	"  :bind"
	"  (:map jag-%1$s-map"
	""
	"    ))"
	))
  "The template used to create a new key module.
The template will be formatted with the (format template name func-module binding)")

(defvar jag-test-module-body-template
  (s-join
   "\n"
   (list
	"(require '%1$s)"
	))
  "The template used to create a new testing module.
The template will be formatted with (format func-module)")

(defun jag--new-general-module-file (name)
  "Create new general module file with NAME."
  (jag--new-template-file name "modules" "Config for general module %s" jag-modules-dir
						  (format jag-general-module-body-template name (jag--new-template-name "funcs" name ))))

(defun jag--new-mode-module-file (name)
  "Create new mode module file with NAME."
  (jag--new-template-file name "modes" "Config for mode %s" jag-modes-dir
						  (format jag-mode-module-body-template name (jag--new-template-name "funcs" name ))))

(defun jag--new-key-module-file (name leader-key)
  "Create new key module file with NAME."
  (jag--new-template-file name "keys" "Config for key %s" jag-keys-dir
						  (format jag-key-module-body-template name (jag--new-template-name "funcs" name ) leader-key )))

(defun jag--new-func-module-file (name)
  "Create new func file for module NAME."
  (jag--new-template-file name "funcs" "Functions for %s" jag-funcs-dir))

(defun jag--new-test-module-file (name)
  "Create new test file for module NAME."
  (jag--new-template-file name "tests" "Tests for %s functions" jag-tests-dir
						  (format jag-test-module-body-template (jag--new-template-name "funcs" name))))


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
  (save-buffer)))

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

;;; jag-core-constants.el --- Core constants -*- lexical-binding: t -*-

;;; Commentary:

;; The constants used throughout the code

;;; Code:

(defconst jag-init-time (current-time)
  "When Emacs started evaling our code.
Similar to `before-init-time'")

(defmacro jag--def-and-load-dir (name desc)
  "Create a constant for directory NAME with description DESC and then load it."
  (let ((dir-symbol (intern (format "jag-%s-dir" name))))
  `(progn
	 (defconst ,dir-symbol (expand-file-name ,name jag-dir)
	   ,desc)
	 (add-to-list 'load-path ,dir-symbol))))

(jag--def-and-load-dir "core" "The home of the core functionality.")
(jag--def-and-load-dir "keys" "The directory for key bindings.")
(jag--def-and-load-dir "funcs" "The directory of custom functions to assist with maps and packages.")
(jag--def-and-load-dir "tests" "The directory of testings for the custom functions.")
(jag--def-and-load-dir "locals" "The directory for local packages.")
(jag--def-and-load-dir "modules" "The directory for packages grouped into modules.")
(jag--def-and-load-dir "modes" "The directory for mode specific packages.")


(defconst jag-notes-dir (expand-file-name "notes" jag-dir)
  "The directory for storing notes.")

(defconst jag-gtd-dir (expand-file-name "gtd" jag-notes-dir)
  "The directory for storing gtd notes.")

(defconst jag-notes-library-dir (expand-file-name "library" jag-notes-dir)
  "The directory for storing interconnected notes.")

(defconst jag-notes-bibliography-dir (expand-file-name "bibliography" jag-notes-dir)
  "The directory for storing bibliography notes.")

(provide 'jag-core-constants)

;;; jag-core-constants.el ends here

;;; jag-core-constants.el --- Core constants -*- lexical-binding: t -*-

;;; Commentary:

;; The constants used throughout the code

;;; Code:

(defconst jag-init-time (current-time)
  "When Emacs started evaling our code.
Similar to `before-init-time'")

(defmacro jag--def-and-load-dir (def name desc)
  "Create a constant DEF for directory NAME with description DESC and then load it."
  `(progn
	 (defconst ,def (expand-file-name ,name jag-dir)
	   ,desc)
	 (add-to-list 'load-path ,def)))

(jag--def-and-load-dir jag-core-dir "core" "The home of the core functionality.")
(jag--def-and-load-dir jag-keys-dir "keys" "The directory for key bindings.")
(jag--def-and-load-dir jag-funcs-dir "funcs" "The directory of custom functions to assist with maps and packages.")
(jag--def-and-load-dir jag-locals-dir "locals" "The directory for local packages.")
(jag--def-and-load-dir jag-modules-dir "modules" "The directory for packages grouped into modules.")
(jag--def-and-load-dir jag-modes-dir "modes" "The directory for mode specific packages.")


(defconst jag-notes-dir (expand-file-name "notes" jag-dir)
  "The directory for storing notes.")

(defconst jag-gtd-dir (expand-file-name "gtd" jag-notes-dir)
  "The directory for storing gtd notes.")


(provide 'jag-core-constants)

;;; jag-core-constants.el ends here

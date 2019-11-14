;;; jag-core-constants.el --- Core constants -*- lexical-binding: t -*-

;;; Commentary:

;; The constants used throughout the code

;;; Code:

(defconst jag-init-time (current-time)
  "When Emacs started evaling our code.
Similar to `before-init-time'")


(defconst jag-core-dir (expand-file-name "core" jag-dir)
  "The home of the core functionality.")
(add-to-list 'load-path jag-core-dir)

(defconst jag-keys-dir (expand-file-name "keys" jag-dir)
  "The directory for key bindings.")
(add-to-list 'load-path jag-keys-dir)

(defconst jag-funcs-dir (expand-file-name "funcs" jag-dir)
  "The directory of custom functions to assist with maps and packages.")
(add-to-list 'load-path jag-funcs-dir)

(defconst jag-locals-dir (expand-file-name "locals" jag-dir)
  "The directory for local packages.")
(add-to-list 'load-path jag-locals-dir)

(defconst jag-modules-dir (expand-file-name "modules" jag-dir)
  "The directory for packages grouped into modules.")
(add-to-list 'load-path jag-modules-dir)

(defconst jag-modes-dir (expand-file-name "modes" jag-dir)
  "The directory for mode specific packages.")
(add-to-list 'load-path jag-modes-dir)



(defconst jag-notes-dir (expand-file-name "notes" jag-dir)
  "The directory for storing notes.")

(defconst jag-gtd-dir (expand-file-name "gtd" jag-notes-dir)
  "The directory for storing gtd notes.")


(provide 'jag-core-constants)

;;; jag-core-constants.el ends here

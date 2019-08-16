;;; jag-core-constants.el --- Core constants -*- lexical-binding: t -*-

;;; Commentary:

;; The constants used throughout the code

;;; Code:

(defconst jag-init-time (current-time)
  "When Emacs started evaling our code.
Similar to `before-init-time'")

(defconst jag-core-dir (expand-file-name "core" jag-dir)
  "The home of the core functionality.")
(add-to-list 'load-path (expand-file-name "core" jag-dir))

(defconst jag-funcs-dir (expand-file-name "funcs" jag-dir)
  "The directory of custom functions to assist with maps and packages.")
(add-to-list 'load-path (expand-file-name "funcs"))

(defconst jag-locals-dir (expand-file-name "locals" jag-dir)
  "The directory for local packages.")
(add-to-list 'load-path (expand-file-name "locals"))

(defconst jag-packages-dir (expand-file-name "packages" jag-dir)
  "The directory for downloaded packages.")
(add-to-list 'load-path (expand-file-name "packages"))

(defconst jag-modes-dir (expand-file-name "modes" jag-dir)
  "The directory for mode specific packages.")
(add-to-list 'load-path (expand-file-name "modes"))


(provide 'jag-core-constants)

;;; jag-core-constants.el ends here

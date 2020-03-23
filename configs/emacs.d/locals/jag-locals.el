;;; jag-locals.el --- Loads all locally saved packages -*- lexical-binding: t -*-

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; For packages that aren't added the the gnu repo, they are created and loaded from here.

;;; Code:

(defun jag--add-local-path (path)
  "Add a local package at PATH to load path."
  (add-to-list 'load-path (expand-file-name path jag-locals-dir)))

(provide 'jag-locals)

;;; jag-locals.el ends here

;;; structurizr-dsl-mode.el --- summary -*- lexical-binding: t -*-

;; Author: Sebastian Aburto
;; Maintainer: Sebastian Aburto
;; Version: version
;; Homepage: homepage
;; Keywords: keywords
;; Package-Version: 1.0.0


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

;; commentary

;;; Code:

(setq structurizr-dsl-mode/highligths
      '(("workspace" . font-lock-keyword-face)))

(define-derived-mode structurizr-dsl-mode prog-mode "Structurizr-Dsl-Mode"
  "major mode for structurizr-dsl-mode"
  (setq font-lock-defaults '(structurizr-dsl-mode/highligths)))

(provide 'structurizr-dsl-mode)

;;; structurizr-dsl-mode.el ends here

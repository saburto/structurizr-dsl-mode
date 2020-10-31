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


(setq structurizr-dsl-mode/types '("workspace"
                                   "model"
                                   "enterprise"
                                   "person"
                                   "softwareSystemInstance"
                                   "softwareSystem"
                                   "softwaresystem"
                                   "containerInstance"
                                   "container"
                                   "component"))

(setq structurizr-dsl-mode/keywords '(
                                      "*"
                                      "animationStep"
                                      "autolayout"
                                      "autoLayout"
                                      "background"
                                      "border"
                                      "branding"
                                      "color"
                                      "colour"
                                      "configuration"
                                      "dashed"
                                      "deployment"
                                      "deploymentEnvironment"
                                      "deploymentNode"
                                      "description"
                                      "dynamic"
                                      "element"
                                      "exclude"
                                      "filtered"
                                      "font"
                                      "fontSize"
                                      "height"
                                      "icon"
                                      "include"
                                      "infrastructureNode"
                                      "logo"
                                      "metadata"
                                      "opacity"
                                      "perspectives"
                                      "position"
                                      "properties"
                                      "relationship"
                                      "routing"
                                      "shape"
                                      "softwareSystemInstance"
                                      "stroke"
                                      "styles"
                                      "systemcontext"
                                      "systemContext"
                                      "systemlandscape"
                                      "systemLandscape"
                                      "themes"
                                      "thickness"
                                      "url"
                                      "users"
                                      "views"
                                      "->"
                                      "width"))

(setq structurizr-dsl-mode/highligths
        `(

          ("shape \\(.*\\)"  1 font-lock-builtin-face)
          ("//.*$" . font-lock-comment-face)
          ("# .*$" . font-lock-comment-face)
          ("\\([a-zA-Z]+\\) = " 1 font-lock-variable-name-face)
          (,(regexp-opt structurizr-dsl-mode/types 'symbol) . font-lock-type-face)
          (,(regexp-opt structurizr-dsl-mode/keywords 'word) . font-lock-keyword-face)
          )
      )

(define-derived-mode structurizr-dsl-mode prog-mode "Structurizr-Dsl-Mode"
  "major mode for structurizr-dsl-mode"
  (setq font-lock-defaults '(structurizr-dsl-mode/highligths))

  (modify-syntax-entry ?\/ ". 14" structurizr-dsl-mode-syntax-table)
  (modify-syntax-entry ?* ". 23" structurizr-dsl-mode-syntax-table)

  (setq-local comment-start "/*")
  (setq-local comment-start-skip "/\\*+[ \t]*")
  (setq-local comment-end "*/")
  (setq-local comment-end-skip "[ \t]*\\*+/")

  )

(provide 'structurizr-dsl-mode)

;;; structurizr-dsl-mode.el ends here

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


(setq structurizr-dsl-mode/keywords '("->"
                                      "animationStep"
                                      "autolayout"
                                      "background"
                                      "border"
                                      "branding"
                                      "color"
                                      "colour"
                                      "component"
                                      "configuration"
                                      "container"
                                      "containerInstance"
                                      "dashed"
                                      "deployment"
                                      "deploymentEnvironment"
                                      "deploymentNode"
                                      "description"
                                      "dynamic"
                                      "element"
                                      "enterprise"
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
                                      "model"
                                      "opacity"
                                      "person"
                                      "perspectives"
                                      "position"
                                      "properties"
                                      "relationship"
                                      "routing"
                                      "shape"
                                      "softwareSystem"
                                      "softwareSystemInstance"
                                      "stroke"
                                      "styles"
                                      "systemContext"
                                      "systemLandscape"
                                      "themes"
                                      "thickness"
                                      "url"
                                      "users"
                                      "views"
                                      "width"
                                      "workspace"
                                      "!include"))

(setq structurizr-dsl-mode/highligths
      `((,(regexp-opt structurizr-dsl-mode/keywords) . font-lock-keyword-face)))

(define-derived-mode structurizr-dsl-mode prog-mode "Structurizr-Dsl-Mode"
  "major mode for structurizr-dsl-mode"
  (setq font-lock-defaults '(structurizr-dsl-mode/highligths))

  (modify-syntax-entry ?# "<" structurizr-dsl-mode-syntax-table)

  (modify-syntax-entry ?\/ ". 14" structurizr-dsl-mode-syntax-table)
  (modify-syntax-entry ?* ". 23" structurizr-dsl-mode-syntax-table)
  (modify-syntax-entry ?\/ ". 12b" structurizr-dsl-mode-syntax-table)
  (modify-syntax-entry ?\n "> b" structurizr-dsl-mode-syntax-table))

(provide 'structurizr-dsl-mode)

;;; structurizr-dsl-mode.el ends here

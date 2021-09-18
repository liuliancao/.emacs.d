;;; init-roam.el --- use roam by liuliancao          -*- lexical-binding: t; -*-

;; Copyright (C) 2021  陆启学

;; Author: 陆启学 <liuliancao@luqixuedeMacBook-Pro.local>
;; Keywords:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:
;;; used for useing roam.
;;

;;; Code:
(use-package org-roam
  :ensure t
  :init
  (setq org-roam-v2-ack t)
  :custom
  (make-directory "~/org-roam")
  (setq org-roam-db-gc-threshold most-positive-fixnum)
  (setq org-roam-directory "~/org-roam")
  (setq org-roam-completion-everywhere t)
  (setq org-roam-v2-ack t)
  (setq org-roam-ui-mode nil)
  (add-hook 'after-init-hook 'org-roam-mode)
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         :map org-mode-map
         ("C-M-i" . completion-at-point))
  :config
  (org-roam-setup)
  (setq org-roam-capture-templates
        '(("d" "default" plain "%?" :if-new
           (file+head "${slug}.org" "#+title: ${title}\n")
           :unnarrowed t)
          )
        )
  )

(use-package deft
  :ensure t
  :defer t
  :after org
  :bind
  ("C-c n d" . deft)
  :custom
  (deft-recursive t)
  (deft-use-filter-string-for-filename t)
  (deft-default-extension "org")
  (deft-directory org-roam-directory))

(provide 'init-roam)
;;; init-roam.el ends here

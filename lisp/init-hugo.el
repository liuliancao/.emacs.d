;;; init-hugo.el --- blog with hugo                  -*- lexical-binding: t; -*-

;; Copyright (C) 2021  陆启学

;; Author: 陆启学 <liuliancao@luqixuedeMacBook-Pro.local>
;; Keywords: blog,
(use-package ox-hugo
  :ensure t
  :after ox
  :config
  (setq org-hugo-base-dir "~/hugo")
  (setq org-hugo-section "roams")
  (setq org-hugo-auto-set-lastmod t)
  )
(provide 'init-hugo)

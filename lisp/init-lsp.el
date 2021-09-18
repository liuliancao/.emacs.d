;;; init-lsp.el --- use for lsp-mode                 -*- lexical-binding: t; -*-

;; Copyright (C) 2021  陆启学

;; Author: 陆启学 <liuliancao@luqixuedeMacBook-Pro.local>
;; Keywords: lisp, c,
(use-package lsp-mode :commands lsp)
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)
(use-package company-lsp
  :commands company-lsp)
(use-package ccls
  :ensure t
  :hook ((c-mode c++-mode objec-mode cuda-mode) . (lambda () (require 'ccls) (lsp))))

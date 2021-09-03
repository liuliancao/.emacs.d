;;; init-groovy.el -- Summary Groovy related -*- lexical-binding: t -*-
;;; Commentary:
;;; Author: liuliancao
;;; Code:
(add-to-list'interpreter-mode-alist '("groovy". groovy-mode))
(use-package groovy-mode
  :ensure t
  :mode (("\\.groovy\\'" . groovy-mode))
  )
(provide 'init-groovy)
;;; init-groovy.el ends here

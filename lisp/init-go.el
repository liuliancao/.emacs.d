;;; init-go.el --- Summary Go lang related -*- lexical-binding: t -*-
;;; Commentary:
;;; Author: liuliancao@gmail.com
;;; Keywords: languages
;;; Code:
(use-package go-mode
  :ensure t
  :mode (("\\.go\\'" . go-mode))
  :hook ((before-save . gofmt-before-save))
  :config
  (setq gofmt-command "goimports")
  (use-package company-go
    :ensure t
    :config

    (add-hook 'go-mode-hook (lambda ()
                              (add-to-list (make-local-variable 'company-backends)
                                           '(company-go company-files company-yasnippet company-capf)
                                           )
                              ))
    )
  (use-package go-eldoc
    :ensure t
    :hook (go-mode . go-eldoc-setup)
    )
  (use-package go-guru
    :ensure t
    :hook (go-mode . go-guru-hl-identifier-mode)
    )
  (use-package go-rename
    :ensure t)
  )
(provide 'init-go)
;;; init-go.el ends here

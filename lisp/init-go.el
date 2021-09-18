;;; init-go.el --- Summary Go lang related -*- lexical-binding: t -*-
;;; Commentary:
;;; Author: liuliancao@gmail.com
;;; Keywords: languages
;;; Code:
(use-package go-mode
  :ensure t
  :mode (("\\.go\\'" . go-mode))
  ;;:hook ((before-save . gofmt-before-save))
  :config
  ;;(setq gofmt-command "goimports")

  (add-hook 'go-mode-hook #'lsp-go-install-save-hooks)
  (add-hook 'go-mode-hook 'lsp-deferred)
  (add-hook 'go-mode-hook #'yas-minor-mode)
  (use-package lsp-mode
    :ensure t
    :config
    (defun lsp-go-install-save-hooks ()
      (add-hook 'before-save-hook #'lsp-format-buffer t t)
      (add-hook 'before-save-hook #'lsp-organize-imports t t))
    )
  ;; Set up before-save hooks to format buffer and add/delete imports.
  (use-package company-go
    :ensure t
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

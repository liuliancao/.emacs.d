;;; init-yasnippet.el --- init yasnippet -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(use-package yasnippet
  :ensure t
  :init
  ;;(add-hook 'prog-mode-hook #'yas-minor-mode)
  :config
  (yas-reload-all)
  (yas-minor-mode t)
  (use-package yasnippet-snippets
    :ensure t))
(provide 'init-yasnippet)
;;; init-yasnippet.el ends here

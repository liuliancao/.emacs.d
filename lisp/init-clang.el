;;; init-clang.el --- c/c++ related       -*- lexical-binding: t; -*-
;;; Commentary:
;; Copyright (C) 2021  陆启学

;; Author: 陆启学 <liuliancao@luqixuedeMacBook-Pro.local>
;; Keywords: c,
;;; Code:

(use-package irony
  :ensure t
  :config
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

  (use-package company-irony-c-headers
    :ensure t)
  (use-package company-irony
    :ensure t
    :config
    (add-to-list 'company-backends 'company-irony)
    (add-to-list 'company-backends 'company-irony-c-headers))
  (use-package flycheck-irony
    :ensure t
    :config
    (eval-after-load 'flycheck '(add-hook 'flycheck-mode-hook 'flycheck-irony-setup)))
  (use-package irony-eldoc
    :ensure t
    :config
    (add-hook 'irony-mode-hook #'irony-eldoc))

  )

(use-package rtags
  :ensure t
  :config
  (rtags-enable-standard-keybindings)
  (setq rtags-autostart-diagnostics t)
  (rtags-diagnostics)
  (setq rtags-completions-enabled t)
  (define-key c-mode-base-map (kbd "M-.")
    (function rtags-find-symbol-at-point))
  (define-key c-mode-base-map (kbd "M-,")
    (function rtags-find-references-at-point))
  )

(use-package cmake-ide
  :ensure t
  :config
  (cmake-ide-setup))
(provide 'init-clang)
;;; init-clang ends here

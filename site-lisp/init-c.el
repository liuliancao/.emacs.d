;;; init-c.el --- Configure C global behaviour -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:



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
  (cmake-ide-setup)
  )

;;; init-c.el ends here

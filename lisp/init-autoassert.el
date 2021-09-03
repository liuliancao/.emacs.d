;;; init-autoinsert.el --- Configure auto insert behaviour -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:
(use-package autoinsert
  :ensure t
  :config
  (setq auto-insert-query nil)
  (setq auto-insert-directory (locate-user-emacs-file "templates"))
  (add-hook 'find-file-hook 'auto-insert)
  (auto-insert-mode t)
)

(provide 'init-autoassert)
;;; init-autoassert.el ends here

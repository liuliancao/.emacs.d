;;; init-jump.el --- Summary Jump related -*- lexical-binding: t -*-
;;; Commentary:
;;; Author: liuliancao
;;; Keywords: jump defination
;;; Code:
(use-package dumb-jump
  :ensure t
  :config
  (setq dumb-jump-force-searcher 'ag)
  (use-package ag
    :ensure t
    )
  (setq dumb-jump-default-project "~/projects")
  )
;;; init-jump.el ends here

;;; init.el --- autoinsert                -*- lexical-binding: t; -*-
;;; Commentary:
;;; Copyright (C) 2022  liuliancao

;;; Author: liuliancao <liuliancao@gmail.com>
;;; Keywords: elisp
;;; Code:
(require 'org)
(org-babel-load-file (expand-file-name "settings.org" user-emacs-directory))

(provide 'init)
;;; init.el ends here
(put 'scroll-left 'disabled nil)

;;; init-gnus.el --- Summary gnus newsreader(mail) client -*- lexical-binding: t -*-
;;; Commentary:
;;; Author: liuliancao@gmail.com
;;; Keywords: mail
;;; Code:
(use-package gnus
  :config
  (setq gnus-secondary-select-methods '((nnml "")))
  (setq nnmail-split-methods
        '(("junk" "^From:.*Lars Ingebrigtsen")
          ("crazy" "^Subject:.*die\\|^Organization:.*flabby")
          ("other" "")))

  (setq gnus-secondary-select-methods '((nnimap "ali-qiye"
                                                (nnimap-address "imap.qiye.aliyun.com")
                                                (nnimap-inbox "aliqiye")
                                                (nnimap-split-methods "default")
                                                (nnimap-expunge t)
                                                (nnimap-stream ssl))
                                        (nnimap "qq-qiye"
                                                (nnimap-address "imap.exmail.qq.com")
                                                (nnimap-inbox "qqqiye")
                                                (nnimap-split-methods "default")
                                                (nnimap-stream ssl)
                                                (nnimap-expunge t))))

  )
(provide 'init-gnus)
;;; init-gnus.el ends here

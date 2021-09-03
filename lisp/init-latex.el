;;; init-latex.el --- Summary Go lang related -*- lexical-binding: t -*-
;;; Commentary:
;;; Author: liuliancao@gmail.com
;;; Keywords: latex
;;; Code:
(setq org-latex-pdf-process
      '(
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "rm -fr %b.out %b.log %b.tex auto"
        ))
(setq org-latex-compiler "xelatex")
(setq Tex-engine "xelatex")
(provide 'init-latex)
;;; init-latex.el ends here

(package-install-if-missing 'web-mode)

(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(add-to-list 'web-mode-comment-formats '("jsx" . "// " ))
(add-to-list 'web-mode-comment-formats '("javascript" . "// " ))

(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
      (let ((web-mode-enable-part-face nil))
        ad-do-it)
    ad-do-it))

(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-css-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            ))

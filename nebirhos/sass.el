;; sass and scss
(package-install-if-missing 'sass-mode)
(package-install-if-missing 'rainbow-mode)

;; (setq rainbow-html-colors-major-mode-list (html-mode css-mode php-mode nxml-mode xml-mode sass-mode))

(package-install-if-missing 'highlight-indentation)
(add-hook 'sass-mode-hook
    (lambda () (highlight-indentation-mode) (rainbow-mode)))
(add-hook 'html-mode-hook 'rainbow-mode)
(add-hook 'web-mode-hook 'rainbow-mode)
(add-hook 'coffee-mode-hook 'rainbow-mode)

(setq auto-mode-alist (cons '("\\.scss$" . css-mode) auto-mode-alist))

;; coffee script
(package-install-if-missing 'jade-mode)

(package-install-if-missing 'highlight-indentation)
(add-hook 'jade-mode-hook
	  (lambda () (highlight-indentation-mode)))

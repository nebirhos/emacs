(load-file "~/.emacs.d/vendor/cucumber/feature-mode.el")

;; load bundle snippets
(yas/load-directory "~/.emacs.d/vendor/cucumber/snippets")

(add-to-list 'auto-mode-alist '("\\.feature" . feature-mode))

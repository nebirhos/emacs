;; js2
(package-install-if-missing 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq-default js2-basic-offset 2)

;; PHP mode
(vendor 'php-mode)

(setq auto-mode-alist (cons '("\\.html" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.php" . php-mode) auto-mode-alist))

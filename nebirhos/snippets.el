(vendor 'yasnippet)
(yas/initialize)

;; New snippets are stored in the first directory
(setq yas/root-directory '("~/.emacs.d/nebirhos/snippets"
                           "~/.emacs.d/vendor/yasnippet/snippets"))

;; Map `yas/load-directory' to every element
(mapc 'yas/load-directory yas/root-directory)

;; autopair a-la textmate
(vendor 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

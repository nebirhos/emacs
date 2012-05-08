;; haml, sass and scss
(vendor 'haml-mode)
(vendor 'sass-mode)
(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . css-mode))

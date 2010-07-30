(add-to-list 'load-path "~/.emacs.d/vendor")

;; My configs
(load "nebirhos/global")
(load "defunkt/defuns")
(load "nebirhos/files")
(load "nebirhos/snippets")
(load "nebirhos/bindings")
(load "nebirhos/theme")


(vendor 'rinari)
(vendor 'magit)
(vendor 'textmate)
(textmate-mode)
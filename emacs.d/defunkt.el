(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/defunkt/custom.el")
(load custom-file)

(load ".passwords")

(load "defunkt/lisp")
(load "defunkt/global")
(load "defunkt/helpers")
(load "defunkt/modes")
(load "defunkt/theme")
(load "defunkt/temp_files")

(vendor 'cheat)
(vendor 'magit)
(vendor 'gist)
(vendor 'growl)
(vendor 'twittering-mode)
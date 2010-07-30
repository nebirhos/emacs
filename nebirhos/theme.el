(require 'color-theme)
(setq color-theme-is-global t)

(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
(if window-system
 (color-theme-twilight) )

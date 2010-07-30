(require 'color-theme)
(setq color-theme-is-global t)

(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
(if window-system
 (color-theme-twilight) )

;; FONT
(if is-mac
    (set-default-font "-apple-inconsolata-medium-r-normal--16-160-72-72-m-160-iso10646-1") )
(if is-*nix
    (set-default-font "Inconsolata-dz-12") )

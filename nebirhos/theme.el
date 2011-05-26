;; Theme
(require 'color-theme)
(setq color-theme-is-global t)

(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
(load-file "~/.emacs.d/vendor/color-theme-zenburn/zenburn.el")

(color-theme-zenburn)

;; Font
(defun nebirhos-set-font ()
  (if is-mac
      (set-default-font "-apple-inconsolata-medium-r-normal--16-160-72-72-m-160-iso10646-1") )
  (if is-*nix
      (set-default-font "Inconsolata-dz-10.5") ))

(when window-system
  (nebirhos-set-font))

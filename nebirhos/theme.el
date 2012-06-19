;; Theme
(require 'color-theme)
(setq color-theme-is-global t)

(vendor 'color-theme-twilight)
(vendor 'color-theme-solarized)
(vendor 'color-theme-molokai)
(vendor 'color-theme-zenburn)

(color-theme-zenburn)
;; (set-background-color "#222")

;; Font
(defun nebirhos-set-font ()
  (if is-mac
      (set-default-font "-apple-inconsolata-medium-r-normal--16-160-72-72-m-160-iso10646-1") )
  (if is-*nix
      (set-default-font "Inconsolata-dz-11") ))

(when window-system
  (nebirhos-set-font))

;; Linum
(setq linum-format "%3d ")
(global-linum-mode)

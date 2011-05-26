;; Emacsclient settings
;; Since emacs --daemon starts a terminal frame, we need to customize frames each time

(add-hook 'after-make-frame-functions
          (lambda (frame)
            (set-variable 'color-theme-is-global nil)
            (select-frame frame)
            (nebirhos-set-switch-buffer)
            (when window-system
                (nebirhos-set-font)
                (color-theme-zenburn)
                (if (fboundp 'menu-bar-mode) (menu-bar-mode 1)) )
            (when (not window-system)
                (color-theme-tty-dark)
                (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)) )
            ))

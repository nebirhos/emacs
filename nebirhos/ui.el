;; Emacs (G)UI settings
(setq inhibit-startup-message t)                            ; Disable startup screen
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))        ; No scroll bar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))            ; No tool bar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))            ; No menu bar
(set-default 'cursor-type 'bar)                             ; Bar Cursor
(blink-cursor-mode -1)                                      ; the blinking cursor is nothing, but an annoyance

;; Nice scrolling
(setq scroll-margin 0
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;; Caption is pathname/temp buffer name
(setq frame-title-format
      '(buffer-file-name "%f" (dired-directory dired-directory "%b")))

;; Don't wrap
(set-default 'truncate-lines t)

;; Show line and column numbers in mode line
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Line numbers on left side
(setq linum-format "%3d ")
(global-linum-mode)

;; Disable frame borders
(if (fboundp 'fringe-mode) (fringe-mode 0))


;; Highlight indentation
(package-install-if-missing 'highlight-indentation)
(set-face-background 'highlight-indentation-face "#292929")
(set-face-background 'highlight-indentation-current-column-face "#333333")

;; Theme
(package-install-if-missing 'molokai-theme)
(load-theme 'molokai t)

;; Font
(defun nebirhos-set-font ()
  ;; (if is-mac
  ;;     (set-default-font "-apple-inconsolata-medium-r-normal--16-160-72-72-m-160-iso10646-1") )
  ;; (if is-*nix
  ;;     (set-default-font "Inconsolata-dz-11") )
  )

;; Emacsclient settings - grabbed from Prelude http://batsov.com/prelude/
;; Since emacs --daemon starts a terminal frame, we need to customize frames each time
;; For daemon mode, with-selected-frame seems to be required.  Normal
;; mode seems to require with-selected-frame to be absent.
(require 'server) ; for server-running-p
(defun prelude-frame-config (frame)
  "Custom behaviours for new frames."
  (if (server-running-p)

      (with-selected-frame frame
        (when (display-graphic-p)       ; X
          (nebirhos-set-font))
        (when (not (display-graphic-p)) ; Terminal
          (set-face-background 'default "unspecified-bg" frame)) )
    ; else
    (lambda
      (when (display-graphic-p)       ; X
        (nebirhos-set-font))
      (when (not (display-graphic-p)) ; Terminal
        (set-face-background 'default "unspecified-bg")) )
    ) ; if-else
  )   ; defun

;; run now
(prelude-frame-config (selected-frame))
;; and later
(add-hook 'after-make-frame-functions 'prelude-frame-config)

;; powerline
(package-install-if-missing 'powerline)
(powerline-default-theme)

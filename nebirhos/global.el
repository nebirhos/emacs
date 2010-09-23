;; What system is being used?
(setq is-*nix (if (string-match "linux" (symbol-name system-type)) t))
(setq is-windows (if (string-match "windows" (symbol-name system-type)) t))
(setq is-mac (if (string-match "darwin" (symbol-name system-type)) t))


;; Formatting
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Char coding
(prefer-coding-system       'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)


;; Emacs (G)UI
(setq inhibit-startup-message t)
(setq inhibit-startup-message t)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))        ; No scroll bar
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))            ; No tool bar
(set-default 'cursor-type 'bar)                             ; Bar Cursor

;; Emacs Terminal
(if (not window-system)
  (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)) )

;; Caption is pathname/temp buffer name
(setq frame-title-format
 '(buffer-file-name "%f" (dired-directory dired-directory "%b")))

;; Don't wrap
(set-default 'truncate-lines t)

;; Show column numbers in mode line
(column-number-mode t)

;; Ask for 'y' or 'n', not 'yes' or 'no
(fset 'yes-or-no-p 'y-or-n-p)

;; Run a single instance of emacs, which accepts all 'open file' requests
(if window-system
  (server-start) )
;; Does not popup the annoying message when killing a client buffer
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)


;; Some other useful tricks
;; InteractivelyDoThings
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;; TextMate mode only for mac
(vendor 'textmate)
(if is-mac
    (textmate-mode))

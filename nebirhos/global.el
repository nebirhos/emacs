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

;; Ask for 'y' or 'n', not 'yes' or 'no
(fset 'yes-or-no-p 'y-or-n-p)

;; Increase kill ring and history size
(setq kill-ring-max 100)
(setq query-replace-history-max 50)
(setq replace-string-history-max 50)
(setq replace-regex-history-max 50)
(setq find-file-history-max 1000)


;; Some other useful tricks
;; InteractivelyDoThings
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

;; TextMate mode only for mac
(vendor 'textmate)
(if is-mac
    (textmate-mode))

;; Browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "google-chrome")

;; Magit - Git control
(vendor 'magit)
(eval-after-load 'magit
  '(progn
     (set-face-background 'magit-item-highlight "black")
     (set-face-foreground 'magit-diff-add "#06F906")
     (set-face-foreground 'magit-diff-del "#D33A00")))
(global-set-key "\C-xg" 'magit-status)

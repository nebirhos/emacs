;; Files

(setq make-backup-files nil)                                ; No standard backup files
(setq vc-handled-backends nil)                              ; Disable version control system
(setq ls-lisp-dirs-first t)                                 ; Display dirs first in dired
(setq backup-by-copying-when-linked 't)                     ; Respect links

;; Magit - Git control
(vendor 'magit)
(global-set-key "\C-xg" 'magit-status)

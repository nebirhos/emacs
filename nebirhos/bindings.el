;; Global bindings
(cua-mode t)
; sync cut and paste to system clipboard
(setq x-select-enable-clipboard t)

(global-set-key "\C-R" 'query-replace-regexp)
(global-set-key "\C-L" 'goto-line)


;; Ctrl+Tab to switch buffer, F6 for terminals
(cond
 ((window-system)
  (global-set-key (kbd "<C-tab>") 'bury-buffer)
  (global-set-key (kbd "<C-S-iso-lefttab>") 'unbury-buffer)))
(cond
 ((not window-system)
  (global-set-key [f6]   'bury-buffer)
  (global-set-key [(shift f6)] 'unbury-buffer)))

;; Magit
(global-set-key "\C-xg" 'magit-status)
;; Copy & Paste
(cua-mode t)
;; Rules for "copy&paste stacks": emacs kill ring, emacs region, X11 clipboard and X11 selection
(setq mouse-drag-copy-region nil)     ; don't inject selection with mouse to the kill ring
(setq x-select-enable-primary nil)    ; don't sync kill ring with primary X11 selection
(setq x-select-enable-clipboard t)    ; sync kill ring to X11 clipboard
(setq select-active-regions t)        ; sync active region with primary X11 selection
(global-set-key [mouse-2] 'mouse-yank-primary)  ; make mouse middle-click only paste from primary X11 selection, not clipboard and kill ring.

(setq yank-pop-change-selection t)    ; make rotating the kill ring change the X11 clipboard.


(global-set-key "\C-R" 'query-replace-regexp)
(global-set-key "\C-L" 'goto-line)

(global-set-key [f3] 'isearch-repeat-forward)
(global-set-key [(shift f3)] 'isearch-repeat-backward)

(global-set-key "\C-x\C-k" 'kill-all-buffers)

(global-set-key [f5] 'compile)
(global-set-key "\C-c\C-c" 'compile)

(global-set-key "\C-cw" 'whitespace-cleanup)

;; Ctrl+Tab to switch buffer (F6 for terminals)
(global-set-key (kbd "<C-tab>") 'bury-buffer)
(global-set-key (kbd "<C-S-iso-lefttab>") 'unbury-buffer)
(global-set-key [f6] 'bury-buffer)
(global-set-key [(shift f6)] 'unbury-buffer)

;; Other useful shortcuts
(global-set-key "\C-xp" 'nebirhos-ido-find-project)
(global-set-key "\C-x\C-g" 'textmate-goto-file)
(global-set-key "\C-xr" 'rgrep)
(global-set-key "\C-xk" 'kill-this-buffer) ; don't ask, just kill

;; Window resize
(global-set-key (kbd "S-s-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-s-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-s-<down>") 'shrink-window)
(global-set-key (kbd "S-s-<up>") 'enlarge-window)



;; imenu
(global-set-key "\C-ci" 'ido-goto-symbol)
(global-set-key [S-mouse-3] 'imenu)

;; bye-bye Ack
(package-install-if-missing 'ag)
(setq ag-reuse-window 't)

;; ace-jump
(package-install-if-missing 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; projectile
(package-install-if-missing 'projectile)
(package-install-if-missing 'flx-ido)
(projectile-global-mode)
(setq projectile-indexing-method 'find)
;; key shortcuts
(global-set-key "\C-x\C-g" 'projectile-find-file)
(global-set-key "\C-x\C-a" 'projectile-ag)
;; helm
(package-install-if-missing 'helm)
(global-set-key "\C-x\C-b" 'helm-mini)

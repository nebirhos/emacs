;; Files
(setq backup-inhibited t)              ; No standard backup files
(setq auto-save-default nil)           ; disable auto save
(setq create-lockfiles nil)            ; disable .#LOCK_FILE

(add-hook 'before-save-hook 'whitespace-cleanup)

;; warn after 80 characters
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

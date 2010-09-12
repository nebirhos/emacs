; rinari
(vendor 'rinari)
(setq rinari-tags-file-name "TAGS")
(add-hook 'rinari-minor-mode-hook
          (lambda ()
            (define-key rinari-minor-mode-map (kbd "C-f C-c") 'rinari-find-controller)
            (define-key rinari-minor-mode-map (kbd "C-f C-e") 'rinari-find-environment)
            (define-key rinari-minor-mode-map (kbd "C-f C-f") 'rinari-find-file-in-project)
            (define-key rinari-minor-mode-map (kbd "C-f C-h") 'rinari-find-helper)
            (define-key rinari-minor-mode-map (kbd "C-f C-i") 'rinari-find-migration)
            (define-key rinari-minor-mode-map (kbd "C-f C-j") 'rinari-find-javascript)
            (define-key rinari-minor-mode-map (kbd "C-f C-l") 'rinari-find-plugin)
            (define-key rinari-minor-mode-map (kbd "C-f C-m") 'rinari-find-model)
            (define-key rinari-minor-mode-map (kbd "C-f C-n") 'rinari-find-configuration)
            (define-key rinari-minor-mode-map (kbd "C-f C-o") 'rinari-find-log)
            (define-key rinari-minor-mode-map (kbd "C-f C-p") 'rinari-find-public)
            (define-key rinari-minor-mode-map (kbd "C-f C-s") 'rinari-find-script)
            (define-key rinari-minor-mode-map (kbd "C-f C-t") 'rinari-find-test)
            (define-key rinari-minor-mode-map (kbd "C-f C-v") 'rinari-find-view)
            (define-key rinari-minor-mode-map (kbd "C-f C-w") 'rinari-find-worker)
            (define-key rinari-minor-mode-map (kbd "C-f C-x") 'rinari-find-fixture)
            (define-key rinari-minor-mode-map (kbd "C-f C-y") 'rinari-find-stylesheet)

            (define-key rinari-minor-mode-map (kbd "A-r") 'rinari-test)))

; rhtml
(setq auto-mode-alist (cons '("\\.html\\.erb" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.erb" . nxml-mode) auto-mode-alist))

; ruby
(vendor 'ruby-hacks)
(setq auto-mode-alist (cons '("Rakefile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Capfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.god" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.ru" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.gemspec" . ruby-mode) auto-mode-alist))
(package-install-if-missing 'enh-ruby-mode)

(package-install-if-missing 'ruby-tools)

(package-install-if-missing 'ruby-hash-syntax)
(global-set-key (kbd "C-:") 'ruby-toggle-hash-syntax)

(package-install-if-missing 'highlight-indentation)
(add-hook 'enh-ruby-mode-hook
	  (lambda ()
      (ruby-tools-mode)
      (highlight-indentation-current-column-mode)
      ))

(setq auto-mode-alist (cons '("Rakefile" . enh-ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Capfile" . enh-ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Gemfile" . enh-ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake" . enh-ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.gemspec" . enh-ruby-mode) auto-mode-alist))

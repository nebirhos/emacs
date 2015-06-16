(package-install-if-missing 'rw-language-and-country-codes)
(package-install-if-missing 'rw-ispell)
(package-install-if-missing 'rw-hunspell)
(setq ispell-dictionary "it_IT_hunspell")
;; The following is set via custom
(custom-set-variables
 '(rw-hunspell-default-dictionary "it_IT_hunspell")
 '(rw-hunspell-dicpath-list (quote ("/usr/share/hunspell")))
 '(rw-hunspell-make-dictionary-menu t)
 '(rw-hunspell-use-rw-ispell t)
)
(setq-default ispell-program-name "hunspell")
(setq ispell-really-hunspell t)

(package-install-if-missing 'flyspell)

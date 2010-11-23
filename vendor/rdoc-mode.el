;; RDoc Mode
;;
;; I've whipped together this Emacs mode for editing rdoc files. It's
;; based off of generic-mode. I've set it to be active when you open
;; README_FOR_APP or any .rdoc file.
;; Share and enjoy.
;; Jim
;;
;; Feb 26, 2006 7:22:36 am

(defface rdoc-header-1
  '((t (:inherit variable-pitch :background "black" :foreground "white"
		  :weight bold :height 1.4)))
  "rdoc mode header level 1")

(defface rdoc-header-2
  '((t (:inherit variable-pitch :foreground "blue" :weight bold :height 1.3)))
  "rdoc mode header level 2")

(defface rdoc-header-3
  '((t (:inherit variable-pitch :foreground "red" :weight bold :height 1.2)))
  "rdoc mode header level 3")

(defface rdoc-header-4
  '((t (:inherit variable-pitch :foreground "green" :weight bold)))
  "rdoc mode header level 4")

(define-generic-mode 'rdoc-mode
  ()					;comment-list
  '()					;keyword-list
  '(					;font-lock-list
    ("^=[^=].*" . 'rdoc-header-1)
    ("^==[^=].*" . 'rdoc-header-2)
    ("^===[^=].*" . 'rdoc-header-3)
    ("^====[^=].*" . 'rdoc-header-4)
    ("^[\\*#]\\{1,9\\} " . 'bold)
    ("\\(?:[^a-zA-Z0-9]\\)?\\*[^*]+\\*\\(?:[^a-zA-Z0-9]\\)" . 'bold)
    ("\\(?:[^a-zA-Z0-9]\\)?\\_[^_]+\\_\\(?:[^a-zA-Z0-9]\\)" . 'italic)
    )
  '("README_FOR_APP" "README" "\\.rdoc$")	;auto-mode-list
  '((lambda () (auto-fill-mode t)))	;function-list
  "Major mode for editing RDOC files.")

(provide 'rdoc-mode)

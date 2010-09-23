;; Additional functions
(defun kill-all-buffers ()
  "kill all buffers"
  (interactive)
  (mapcar (lambda (x) (kill-buffer x))
          (buffer-list))
  (delete-other-windows))

(defun nebirhos-ido-find-config ()
  (interactive)
  (find-file
   (concat "~/.emacs.d/nebirhos/"
           (ido-completing-read "Config file: "
                                (directory-files "~/.emacs.d/nebirhos/"
                                                 nil
                                                 "^[^.]")))))

    (defun kts (emacs config)
      "nebirhos // nebirhos@aol.com"
  
      (git-clone "git://github.com/nebirhos/emacs.git")
      (ruby "emacs/install.rb")
      (save-buffer))

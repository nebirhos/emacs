# this is not the ruby you're looking for
require 'fileutils'

alias :V :lambda

Joiner = V do |base|
  V do |*others|
    File.join(base, *others)
  end
end

Home = Joiner[ File.expand_path( '~' ) ]
Cwd  = Joiner[ File.expand_path(File.dirname(__FILE__)) ]

Link = V do |target, new|
  FileUtils.ln_s Cwd[ target ], Home[ new ] rescue puts("~/#{new} exists.")
end


Link[ 'emacs.el', '.emacs' ]
Link[ '.', '.emacs.d' ]

`cd #{Cwd[]} && git submodule update --init --recursive`
`emacs --batch --eval '(byte-compile-file "#{Cwd[ 'vendor/js2-mode/js2-mode.el' ]}")'`
`ruby #{Cwd[ 'vendor/js-yasnippets/install.rb' ]}`

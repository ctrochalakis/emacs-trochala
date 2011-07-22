(add-to-list 'load-path "~/.emacs.d")

;; You're expected to populate .emacs.d/local.el
;; with your own code. This file is under .gitignore
;; so it won't be version-controlled. The idea is to
;; make this file load other version-controlled files.
(load "local")

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)


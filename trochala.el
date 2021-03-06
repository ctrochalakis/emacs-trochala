(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/python-mode-1.0/")

; custom place to save customizations
(setq custom-file "~/.emacs.d/trochala/custom.el")
(load custom-file)

(when (file-exists-p ".passwords") (load ".passwords"))

(load "trochala/defuns")
(load "trochala/bindings")
(load "trochala/modes")
(load "trochala/theme")

(vendor 'nav)
(vendor 'anything-config)
(vendor 'dpaste)
(vendor 'egg)
(vendor 'gist)
(vendor 'markdown-mode)
(vendor 'yasnippet)

(load "trochala/global")

(load "trochala/trochala-python.el")

(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets/")
;(setq yas/trigger-key (kbd "C-c u"))

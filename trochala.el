(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/python-mode-1.0/")
(add-to-list 'load-path "~/.emacs.d/ergoemacs/")
(load "trochala/defuns")

(vendor 'nav)
(vendor 'anything-config)
(vendor 'dpaste)
(vendor 'egg)
(vendor 'gist)
(vendor 'markdown-mode)
(vendor 'yasnippet)

; custom place to save customizations
(setq custom-file "~/.emacs.d/trochala/custom.el")
(load custom-file)

(when (file-exists-p ".passwords") (load ".passwords"))

(load "trochala/bindings")
(load "trochala/modes")
(load "trochala/theme")

(load "trochala/global")

;; (load "trochala/trochala-python.el")
(load "trochala/trochala-ruby.el")
(yas/initialize)
(yas/load-directory "~/.emacs.d/vendor/yasnippet/snippets/")
;(setq yas/trigger-key (kbd "C-c u"))

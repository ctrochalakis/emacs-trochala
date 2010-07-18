(autoload 'django-mode "django-mode" "Django Mode" t)
(autoload 'django-html-mode "django-html-mode" "Django html mode" t)
(autoload 'yaml-mode "yaml-mode" "Yaml Mode" t)
;(autoload 'whole-line-or-region "whole-line-or-region" "Whole line" t)
(setenv "ERGOEMACS_KEYBOARD_LAYOUT" "us")
(require 'ergoemacs-mode)
(ergoemacs-mode t)

(require 'whole-line-or-region)
(setq default-major-mode 'indented-text-mode)
;(toggle-text-mode-auto-fill)       ;always auto-fill in text mode,
(cua-mode t)
(setq cua-enable-cua-keys nil)		;do not mess with my keys!
(recentf-mode t)		   ;remember recent files
(ido-mode t)
(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
(setq ido-create-new-buffer 'always)
(show-paren-mode t)	       ; show parenthesis mode
(savehist-mode t)	       ; save minibuffer history
(windmove-default-keybindings) ; move around windows using shift-movement
(winner-mode t)
(desktop-save-mode t)	       ; saving sessions
(delete-selection-mode t)	 	;replace highlighted text
(whole-line-or-region-mode t)
(blink-cursor-mode 0)
(tool-bar-mode 0)
(setq line-number-mode t)
(setq column-number-mode t)
(setq inhibit-startup-message t)	;don't need it anymore.
(setq transient-mark-mode t)		;mark selected area
(setq kill-whole-line t) ;kill newline as well

;; Filetype specific
; Yaml
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
 '(lambda ()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

; Matlab
(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
(add-to-list 'auto-mode-alist '("\\.m$" . matlab-mode))
(setq matlab-indent-function t)

; Markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.mkd$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

; Egg python files
;; Use archive mode to open Python eggs
(add-to-list 'auto-mode-alist '("\\.egg\\'" . archive-mode))

; Javascript
(autoload 'espresso-mode "espresso" nil t)
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.rjs$" . js2-mode))
; Html
; (add-to-list 'auto-mode-alist '("\\.rhtml\\'" . html-mode))

(autoload 'tpl-mode "tpl-mode" "Mustache Mode" t)
(add-to-list 'auto-mode-alist '("\\.mustache$" . tpl-mode))

(autoload 'coffee-mode "coffee-mode" "Mustache Mode" t)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))

(autoload 'feature-mode "feature-mode" "Feature Mode" t)
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))

; Ruby
(add-to-list 'auto-mode-alist '("\\.god$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.task$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))

(setq
 nxhtml-global-minor-mode t
 mumamo-chunk-coloring 2
 nxhtml-skip-welcome t
 indent-region-mode t
 rng-nxml-auto-validate-flag nil
 nxml-degraded t)
(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml\\'" . eruby-nxhtml-mumamo-mode))


(require 'django-mode)
(require 'django-html-mode)
(require 'whole-line-or-region)

(setq default-major-mode 'indented-text-mode)
(toggle-text-mode-auto-fill)       ;always auto-fill in text mode,
(cua-mode t)
(setq cua-enable-cua-keys nil)		;do not mess with my keys!
(recentf-mode t)		   ;remember recent files
;(egg-minor-mode)		   ;git egg mode
(ido-mode t)
(setq ido-enable-flex-matching t) ; fuzzy matching is a must have
(show-paren-mode t)	       ; show parenthesis mode
(savehist-mode t)	       ; save minibuffer history
(windmove-default-keybindings) ; move around windows using shift-movement
(winner-mode t)
(desktop-save-mode t)	       ; saving sessions
(delete-selection-mode t)	 	;replace highlighted text
(whole-line-or-region-mode t)
(blink-cursor-mode 0)
(setq line-number-mode t)
(setq column-number-mode t)
(setq inhibit-startup-message t)	;don't need it anymore.
(setq transient-mark-mode t)		;mark selected area

;; Filetype specific
; Matlab
(autoload 'matlab-mode "matlab" "Matlab Editing Mode" t)
(add-to-list 'auto-mode-alist '("\\.m$" . matlab-mode))
(setq matlab-indent-function t)

; Markdown
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.mkd$" . markdown-mode))

; Egg python files
;; Use archive mode to open Python eggs
(add-to-list 'auto-mode-alist '("\\.egg\\'" . archive-mode))

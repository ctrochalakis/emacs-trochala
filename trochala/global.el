(require 'ido)
(require 'anything)
(require 'smooth-scrolling)
(require 'install-elisp)
;(require 'eproject)
;(require 'project-root)
(require 'rails-autoload)


;;(set-default-font "Monospace-10")
(set-default-font "Envy Code R-11")

(autoload 'cycle-buffer "cycle-buffer" "Cycle forward." t)
(autoload 'cycle-buffer-backward "cycle-buffer" "Cycle backward." t)
(autoload 'cycle-buffer-permissive "cycle-buffer" "Cycle forward allowing *buffers*." t)
(autoload 'cycle-buffer-backward-permissive "cycle-buffer" "Cycle backward allowing *buffers*." t)
(autoload 'cycle-buffer-toggle-interesting "cycle-buffer" "Toggle if this buffer will be considered." t)


(setq install-elisp-repository-directory "~/.emacs.d/")

;; Start the server
(server-start)
(tabbar-mode t)
(load "trochala/tabbar-custom")

;; New frame defaults
;; (require 'maxframe)
;; (defun ct-new-frame-settings (frame)
;;   (select-frame frame)
;;   (choose-theme))

;; (add-hook 'after-make-frame-functions 'ct-new-frame-settings)
;; (add-to-list 'default-frame-alist '(font . "Monospace-10"))
;; (add-to-list 'default-frame-alist '(height . 39))

;; ;;
;; (add-hook 'window-setup-hook 'maximize-frame t)

;; Some window system specific settings.
(setq frame-title-format '(buffer-file-name "%f" ("%b")))
(display-time)

(fset 'yes-or-no-p 'y-or-n-p)		;no big prompts
(setq ido-ignore-buffers '("^ " "^*"))	;ignore special buffers

;; Moving around
(setq track-eol t)			;stay at the end of line while moving
;(setq scroll-conservatively 1000)
;;(setq scroll-margin 2)			;scroll 3 lines from the edge
(setq smooth-scroll-margin 2)			;scroll 3 lines from the edge
(setq default-indicate-empty-lines t)	;indicate empty lines (left fring)

;; Don't clutter up directories with files~
(setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs.d/backups")))
      auto-save-default nil)

;; Anything setup
(setq anything-samewindow t)

;; Calendar stuff
(setq calendar-latitude 38.23)
(setq calendar-longitude 21.70)
(setq calendar-location-name "Patras, Greece")
(setq calendar-week-start-day 1)	;Week starts on Monday

;; Registers
(set-register ?g '(file . "~/.gitconfig"))
(set-register ?h '(file . "~/.hgrc"))
(set-register ?e '(file . "~/.emacs.d/trochala/global.el"))
(set-register ?t '(file . "~/org/todo.org"))
(set-register ?a '(file . "~/todo.org"))

;; Browser
;; (setq browse-url-browser-function 'w3m-browse-url)
;; (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
;; (setq w3m-use-cookies t)		;use cookies
;; (global-set-key "\C-xm" 'browse-url-at-point)

;; project-root
;; (setq project-roots
;;       '(("Generic Python"
;;          :root-contains-files ("__init__.py" "setup.py")
;;          :on-hit (lambda (p) (message (car p))))))

;; eproject
;; (define-project-type python (generic)
;;   (or (look-for "setup.py") (look-for "manage.py"))
;;   :relevant-files ("\\.py$" "\\.html$"))

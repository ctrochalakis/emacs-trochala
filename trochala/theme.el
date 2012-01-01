;(require 'color-theme)
;(when (fboundp 'color-theme-initialize)
;  (color-theme-initialize))
;(setq color-theme-is-global t)

;; (color-theme-gnome2)
;; (set-background-color "grey10")
;; (pink-bliss)
;; (load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
;; (color-theme-twilight)
;(autoload 'color-theme-tango "color-theme-tango" "Tango theme" t)

(defun choose-theme ()
  (if window-system
      (color-theme-tango))
(if (not (window-system))
    (color-theme-tty-dark)))

;(choose-theme)
(require 'color-theme-tangotango)

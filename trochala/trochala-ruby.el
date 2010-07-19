(add-hook 'ruby-mode-hook
      (lambda ()
        (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
        (add-hook 'write-file-functions
                  '(lambda()
                     (save-excursion
                       (untabify (point-min) (point-max)))))
        (set (make-local-variable 'indent-tabs-mode) 'nil)
        (set (make-local-variable 'tab-width) 2)
        (require 'ruby-electric)
        (ruby-electric-mode t)))

;; (eval-after-load 'ruby-mode '(require 'rails-apidock))

(vendor 'ruby-hacks)
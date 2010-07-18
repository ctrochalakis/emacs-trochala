(add-hook 'ruby-mode-hook
      (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))
(eval-after-load 'ruby-mode '(require 'rails-apidock))



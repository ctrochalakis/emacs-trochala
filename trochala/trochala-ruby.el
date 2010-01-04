(add-hook 'ruby-mode-hook
      (lambda () (local-set-key (kbd "RET") 'reindent-then-newline-and-indent)))
(eval-after-load 'ruby-mode '(require 'rails-apidock))

(setq auto-mode-alist
      (append '(
		("\\.rb$"   . ruby-mode)
		("Rakefile" . ruby-mode)
		("\\.rake$" . ruby-mode)
;;		("\\.rjs"   . ruby-mode)
		) auto-mode-alist))
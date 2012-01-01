;; Adds kill-region, yank, etc wrapper that
;; operates on whole line when no region is specified
(require 'whole-line-or-region)

;; This is handy when using capslock
;; Maps M-x to C-x C-m
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

;; Rebind c-w to backspace, move kill region to C-x C-k
;; overiding edit-kbd-macro
;; using whole-line-or-region-kill-region instead of kill-region
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'whole-line-or-region-kill-region)
(global-set-key (kbd "C-c C-k") 'whole-line-or-region-kill-region)
(global-set-key (kbd "C-c C-p") 'whole-line-or-region-kill-ring-save) ;copy

;; Rebind isearch-*-regexp to M-s/M-r
(global-set-key (kbd "M-s") 'isearch-forward-regexp)
(global-set-key (kbd "M-r") 'isearch-backward-regexp)


(global-set-key (kbd "C-l") 'goto-line)
(define-key global-map (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "M-/") 'hippie-expand)

;; This should be faster to type
(defalias 'qrr 'query-replace-regexp)

(global-set-key (kbd "<f11>") 'dired)
(global-set-key (kbd "<f12>") 'djcb-full-screen-toggle)
(global-set-key (kbd "<f10>") 'anything)

;; Buffers
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "C-c k") 'kill-this-buffer)
(global-set-key (kbd "C-c l") 'kill-buffer-and-window)
(global-set-key (kbd "C-c e") 'eval-buffer)
(global-set-key (kbd "C-c |") 'toggle-window-split)

;(global-set-key (kbd "C-o") 'open-next-line)
;(global-set-key (kbd "M-o") 'open-previous-line)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "M-3") 'comment-region)
(global-set-key (kbd "M-#") 'uncomment-region)
(global-set-key (kbd "M-/") 'hippie-expand)

;(global-set-key (kbd "C-x C-<left>") 'cycle-buffer-backward)
;(global-set-key (kbd "C-x C-<right>") 'cycle-buffer)
(global-set-key [(control shift tab)] 'cycle-buffer-backward)
(global-set-key [(control tab)]       'cycle-buffer)

(global-set-key (kbd "M-+")       '(lambda nil (interactive) (djcb-zoom 1)))
(global-set-key (kbd "M-_")  '(lambda nil (interactive) (djcb-zoom -1)))

;; open keyboard shortcut image with F8 key
(global-set-key (kbd "<f8>")
  (lambda ()
    (interactive)
    (find-file "/home/belbo/ergonomic_emacs_layout_qwerty.png")))

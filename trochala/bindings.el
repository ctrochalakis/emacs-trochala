(define-key global-map (kbd "RET") 'newline-and-indent) ; For programming language modes

(global-set-key (kbd "<f11>") 'dired); switch file
(global-set-key (kbd "<f12>") 'djcb-full-screen-toggle)
(global-set-key (kbd "<f10>") 'anything);

;(global-set-key (kbd "M-/") 'hippie-expand)
;(global-set-key (kbd "C-w") 'backward-kill-word)
;(global-set-key (kbd "C-x C-k") 'kill-region)
;(global-set-key (kbd "C-c C-k") 'kill-region)

(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "C-c p") 'copy-line) ; copy current line
(global-set-key (kbd "C-c k") 'kill-this-buffer)
(global-set-key (kbd "C-c l") 'kill-buffer-and-window)
(global-set-key (kbd "C-c e") 'eval-buffer)
(global-set-key (kbd "C-c |") 'toggle-window-split)

;(global-set-key (kbd "C-o") 'open-next-line)
;(global-set-key (kbd "M-o") 'open-previous-line)

(global-set-key (kbd "C-x C-b") 'ibuffer)

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

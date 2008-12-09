(define-key global-map (kbd "RET") 'newline-and-indent) ; For programming language modes

(global-set-key (kbd "<f11>") 'dired); switch file

(global-set-key (kbd "M-/") 'hippie-expand)
(global-set-key (kbd "C-w") 'backward-kill-word)
(global-set-key (kbd "C-x C-k") 'kill-region)
(global-set-key (kbd "C-c C-k") 'kill-region)

(global-set-key (kbd "C-c p") 'copy-line) ; copy current line
(global-set-key (kbd "C-c k") 'kill-this-buffer)
(global-set-key (kbd "C-c l") 'kill-buffer-and-window)
(global-set-key (kbd "C-c e") 'eval-buffer)
(global-set-key (kbd "C-c |") 'toggle-window-split)

(global-set-key (kbd "C-x C-<left>") 'cycle-buffer-backward)
(global-set-key (kbd "C-x C-<right>") 'cycle-buffer)

(load "escreen")
(escreen-install)

;; add C-\ l to list screens with emphase for current one
(defun escreen-get-active-screen-numbers-with-emphasis ()
  "what the name says"
  (interactive)
  (let ((escreens (escreen-get-active-screen-numbers))
        (emphased ""))

    (dolist (s escreens)
      (setq emphased
            (concat emphased (if (= escreen-current-screen-number s)
                                 (propertize (number-to-string s)
                                             ;;'face 'custom-variable-tag) " ")
                                             'face 'info-title-3)
                                             ;;'face 'font-lock-warning-face)
                                             ;;'face 'secondary-selection)
                               (number-to-string s))
                    " ")))
    (message "escreen: active screens: %s" emphased)))

(global-set-key (kbd "C-\\ l") 'escreen-get-active-screen-numbers-with-emphasis)

(defun dim:escreen-goto-last-screen ()
  (interactive)
  (escreen-goto-last-screen)
  (escreen-get-active-screen-numbers-with-emphasis))

(defun dim:escreen-goto-prev-screen (&optional n)
  (interactive "p")
  (escreen-goto-prev-screen n)
  (escreen-get-active-screen-numbers-with-emphasis))

(defun dim:escreen-goto-next-screen (&optional n)
  (interactive "p")
  (escreen-goto-next-screen n)
  (escreen-get-active-screen-numbers-with-emphasis))
(define-key escreen-map escreen-prefix-char 'dim:escreen-goto-last-screen)

(global-set-key (kbd "M-[") 'dim:escreen-goto-prev-screen)
(global-set-key (kbd "M-]") 'dim:escreen-goto-next-screen)
(global-set-key (kbd "C-\\ DEL") 'dim:escreen-goto-prev-screen)
(global-set-key (kbd "C-\\ SPC") 'dim:escreen-goto-next-screen)

;; (global-set-key '[s-mouse-4] 'dim:escreen-goto-prev-screen)
;; (global-set-key '[s-mouse-5] 'dim:escreen-goto-next-screen)
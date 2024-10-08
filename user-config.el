;; -*- mode: emacs-lisp; lexical-binding: t -*-

;; ---------------------------------------
;; General Configuration changes
;; ---------------------------------------

; (setq python-shell-interpreter "C:/Users/blaze/scoop/apps/python/current/python.exe")
; (python :variables python-backend 'anaconda)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(setq projectile-create-missing-test-files t)

(setq buffer-display-table (make-display-table))
(aset buffer-display-table ?\^M [])

(defun clean-workspace ()
  (treemacs-collapse-all-projects))

;; (add-hook 'projectile-after-switch-project-hook 'clean-workspace)

;; ---------------------------------------
;; Line numbers
;; native line numbers taking up lots of space?
(setq-default display-line-numbers-width nil)
;; ---------------------------------------

;; ---------------------------------------
;; Searching
;; replace / search with helm-swoop in Evil normal state
(evil-global-set-key 'normal "/" 'helm-swoop)
;;
;; ---------------------------------------

;; ---------------------------------------
;; Helm Descbinds
;; Recent release of helm-descbinds package breaks which-key menu
;; Remove helm-discbinds-mode from helm mode hook to avoid activating
;; https://github.com/syl20bnr/spacemacs/issues/16276
(remove-hook 'helm-mode-hook 'helm-descbinds-mode)
;; ---------------------------------------

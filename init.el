﻿
(let ((default-directory "~/.emacs.d/extensions"))
  (normal-top-level-add-subdirs-to-load-path))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/extensions/color-theme-6.6.0/themes") 





(require 'color-theme)
    (color-theme-initialize)
    (setq color-theme-is-global t)
    (setq color-theme-is-cumulative t)
    (setq color-theme-load-all-themes nil)

    ; здесь задаёшь тему
    (color-theme-dark-blue2)


(setq display-time-24hr-format t)
(display-time)

(setq inhibit-startup-message t) ;;не показывать сообщение при старте
(fset 'yes-or-no-p 'y-or-n-p) ;;не заставляйте меня печать yes целиком

(menu-bar-mode -1)
(tool-bar-mode -1)

(setq scroll-conservatively 10000)
(setq scroll-preserve-screen-position 't)
(setq scroll-margin 10)


(line-number-mode 1)
(column-number-mode 1)

;; Line numbering
(setq linum-format "%4d")
(global-linum-mode 1)

;; Mouse
(global-set-key [mouse-3] 'imenu)


;автоматические скобки и кавычки
(add-to-list 'load-path "~/.emacs.d/extensions/autopair/")
(require 'autopair)
(autopair-global-mode 1)
(setq autopair-blink nil)


(add-to-list 'load-path "~/.emacs.d/extensions/nyan-mode/")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; nyan-mode
(require 'nyan-mode)
(nyan-mode)
(nyan-start-animation)
(setq nyan-wavy-trail t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(require 'highlight-current-line)
(highlight-current-line-on t)

;; To customize the background color
(set-face-background 'highlight-current-line-face "DarkSlateBlue")


;(set-face-attribute 'default nil :font "Monospace-11")


;;(add-hook 'emacs-lisp-mode-hook 'hexcolour-add-to-font-lock)



(add-to-list 'load-path "~/.emacs.d/extensions/rainbow-delimiters/")
(require 'rainbow-delimiters)

(add-to-list 'load-path "~/.emacs.d/extensions/rainbow/")
(require 'rainbow-mode)

;;(require 'solarized-dark-theme)
(global-rainbow-delimiters-mode 1)

(rainbow-mode)
;;(require 'color-theme-tangotango)

;(require 'highlight)

(show-paren-mode t)
;;(setq show-paren-style 'expression)

;;(color-theme-tangotango)
;;(color-theme-zenburn)

(ido-mode 1)


(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup)
(defun my-minibuffer-setup ()
       (set (make-local-variable 'face-remapping-alist)
          '((default :height 1.5))))


(add-to-list 'load-path "~/.emacs.d/extensions/highlight-sexp")
(require 'highlight-sexp)
(add-hook 'lisp-mode-hook 'highlight-sexp-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-sexp-mode)
(add-hook 'python-mode-hook 'highlight-sexp-mode)
(add-hook 'c-mode-hook 'highlight-sexp-mode)
(add-hook 'js-mode-hook 'highlight-sexp-mode)


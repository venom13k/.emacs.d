(let ((default-directory "~/.emacs.d/extensions"))
  (normal-top-level-add-subdirs-to-load-path))






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


;;ipython
(add-to-list 'load-path "~/.emacs.d/extensions/ipython.el")
(require 'ipython) (setq py-python-command-args '( "--colors=Linux")) (defadvice py-execute-buffer (around python-keep-focus activate) "return focus to python code buffer" (save-excursion ad-do-it)) 

; Autocomplete python
(add-to-list 'load-path "/home/stas/.emacs.d/extensions/auto-complete")
(require 'auto-complete-config) (global-auto-complete-mode t)
(add-to-list 'ac-dictionary-directories "/home/stas/.emacs.d/extensions/auto-complete/ac-dict")
(ac-config-default)

; After installing pymacs, rope
(require 'pymacs)
  (pymacs-load "ropemacs" "rope-")





; Look definition of function or value:
(defun rope-goto-definition-save-place ()
   """ save current place as 'save-place' bookmark and rope-goto-definition """
   (interactive)
   (bookmark-set "save-place" 1)
   (rope-goto-definition)
)
 
(defun rope-return ()
   """ save current place as 'save-place' bookmark and rope-goto-definition """
   (interactive)
   (bookmark-jump "save-place")
)
 
(global-set-key [(M return)] 'rope-goto-definition-save-place)
(global-set-key [(M shift return)] 'rope-return)

; Bookmarks
(require 'bm)
(global-set-key (kbd "C-z b") 'bm-toggle)
(global-set-key (kbd "C-z <up>") 'bm-previous)
(global-set-key (kbd "C-z C-p") 'bm-previous)
;(global-set-key [(control shift down)] 'bm-next)
;(global-set-key [(control shift n)] 'bm-next)
(global-set-key (kbd "C-z <down>") 'bm-next)
(global-set-key (kbd "C-z C-n") 'bm-next)
(global-set-key (kbd "C-z <SPC>") 'bm-show-all)

;python-doc
(add-to-list 'load-path ""~/.emacs.d/extensions/pydoc-info")
    (require 'pydoc-info)
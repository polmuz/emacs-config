;; font and colors
(require 'color-theme)
(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
(color-theme-twilight)
(set-face-font 'default "-unknown-DejaVu Sans Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")

;; Lose some UI
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

;; make buffers name unique
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; intelligent search for file open and buffer swich
(require 'ido)
(ido-mode t)

;; Redefine some keys
;; Alt-x without the alt
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; delete word without backspace
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; subword mode


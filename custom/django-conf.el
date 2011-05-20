(add-to-list 'load-path "~/.emacs.d/vendor/django-mode")

(require 'django-html-mode)
(require 'django-mode)
(yas/load-directory "~/.emacs.d/vendor/django-mode/snippets")
(add-to-list 'auto-mode-alist '("\\.djhtml$" . django-html-mode))

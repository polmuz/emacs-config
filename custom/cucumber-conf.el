(add-to-list 'load-path "~/.emacs.d/vendor/feature-mode")

(require 'feature-mode)
(require 'cucumber-mode)

(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(yas/load-directory "~/.emacs.d/vendor/feature-mode/snippets")

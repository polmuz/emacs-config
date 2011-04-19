;; plugins
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/python")

;; customization for different modes
(add-to-list 'load-path "~/.emacs.d/custom")

(load "ui-config")
;; (load "mode-compile")

(load "yasnippet")

(load "ruby")

;(load "yaml")

;(load "cucumber")

(load "ack")

(load "autocomplete")

(load "utils")

(load "org-mode")

(load "python-custom")

(load "flymake-conf")

(load "javascript")

(load "php")

(load "android-conf")

;; plugins
(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/vendor/python")

;; customization for different modes
(add-to-list 'load-path "~/.emacs.d/custom")

(load "ui-conf")
;; (load "mode-compile")

(load "yasnippet-conf")

(load "ruby-conf")

;(load "yaml")

;(load "cucumber")

(load "ack")

(load "autocomplete-conf")

(load "utils")

(load "org-mode-conf")

(load "python-conf")

(load "flymake-conf")

(load "javascript-conf")

(load "php-conf")

(load "android-conf")

(load "pony-conf")

;; plugins
(add-to-list 'load-path "~/.emacs.d/vendor")

;; customization for different modes
(add-to-list 'load-path "~/.emacs.d/custom")

(load "ui-config")
;; (load "mode-compile")

(load "yasnippet")

(load "ruby")

;(load "yaml")

;(load "cucumber")

(load "autocomplete")

(load "utils")

(load "org-mode")

(load "python")

(load "flymake-conf")

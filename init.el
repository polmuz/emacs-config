;; plugins
(add-to-list 'load-path "~/.emacs.d/vendor")

;; customization for different modes
(add-to-list 'load-path "~/.emacs.d/custom")

(load "ui-config")
;; (load "mode-compile")

(load "ruby")

(load "yasnippet")
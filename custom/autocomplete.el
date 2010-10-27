(add-to-list 'load-path "~/.emacs.d/vendor/autocomplete")
;(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/autocomplete-dict")
(require 'auto-complete-config)
(ac-config-default)

;; CSS autocomplete inifinite loop hacks
(add-to-list 'ac-css-value-classes
	     '(border-width "thin" "medium" "thick" "inherit"))

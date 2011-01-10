(add-hook 'yaml-mode-hook
	  (lambda ()
	    (set (make-local-variable 'indent-tabs-mode) 'nil)
	    (set (make-local-variable 'tab-width) 2)))

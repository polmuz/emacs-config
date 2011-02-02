(require 'python-mode)
(require 'virtualenv)

;; Flymake support
(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "~/.emacs.d/vendor/pyflymake.py" (list local-file))))
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))


(add-hook 'find-file-hook 'flymake-find-file-hook)

(add-hook 'python-mode-hook 
	  (lambda ()
	    ; dont invoke flymake on
	    ; temporary buffers for the interpreter
	    (unless (eq buffer-file-name nil) (flymake-mode 1))
	    (local-set-key [f9] 'flymake-display-err-menu-for-current-line)
	    (local-set-key [f10] 'flymake-goto-prev-error)
	    (local-set-key [f11] 'flymake-goto-next-error)))
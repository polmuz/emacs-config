(add-to-list 'load-path "~/.emacs/vendor/python/")
(require 'python)
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
	    (local-set-key [f11] 'flymake-goto-next-error)
	    (auto-revert-mode)
	    (load-ropemacs)
	    (ropemacs-mode)))


;; ;; Pymacs
;; (autoload 'pymacs-apply "pymacs")
;; (autoload 'pymacs-call "pymacs")
;; (autoload 'pymacs-eval "pymacs" nil t)
;; (autoload 'pymacs-exec "pymacs" nil t)
;; (autoload 'pymacs-load "pymacs" nil t)
;; ;;(eval-after-load "pymacs"
;; ;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))

(require 'pymacs)

(setq pymacs-load-path '("~/.emacs.d/vendor/ropemacs/"
			 "~/.emacs.d/vendor/rope/"))


(defun load-ropemacs ()
    "Load pymacs and ropemacs"
    (pymacs-load "ropemacs" "rope-")
    ;; Automatically save project python buffers before refactorings
    (setq ropemacs-confirm-saving 'nil)
    )

;; (pymacs-load "ropemacs" "rope-")

;;; Electric Pairs
(add-hook 'python-mode-hook
     (lambda ()
      (define-key python-mode-map "\"" 'electric-pair)
      (define-key python-mode-map "\'" 'electric-pair)
      (define-key python-mode-map "(" 'electric-pair)
      (define-key python-mode-map "[" 'electric-pair)
      (define-key python-mode-map "{" 'electric-pair)))
(defun electric-pair ()
  "Insert character pair without sournding spaces"
  (interactive)
  (let (parens-require-spaces)
    (insert-pair)))

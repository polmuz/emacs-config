(require 'rinari)

;; must be required after rinari
(require 'ruby-hacks)
(setq auto-mode-alist (cons '("Rakefile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("Capfile" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.god" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.ru" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.gemspec" . ruby-mode) auto-mode-alist))

(add-to-list 'load-path "~/.emacs.d/custom/ruby")
(load "ruby-indent")

;; Work around for yasnippet with electric
(define-key ruby-mode-map (kbd "TAB") nil)

(add-hook 'ruby-mode-hook
					(lambda ()
						(set (make-local-variable 'indent-tabs-mode) 'nil)
						(set (make-local-variable 'tab-width) 2)
						(define-key
							ruby-mode-map "\C-j" 'ruby-reindent-then-newline-and-indent)
						(require 'ruby-electric)
						(ruby-electric-mode t)))


(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(load "flymake-ruby")

(add-hook 'ruby-mode-hook (lambda()
														(local-set-key (kbd "<f5>") 'find-tag)))


(add-hook 'rinari-minor-mode-hook (lambda()
																		(set (make-local-variable 'tab-width) 2)
																		(local-set-key
																		 (kbd "<f6>") 'rinari-find-model)
																		(local-set-key
																		 (kbd "<f7>") 'rinari-find-view)
																		(local-set-key
																		 (kbd "<f8>") 'rinari-find-controller)))

(add-to-list 'load-path "~/.emacs.d/vendor/rhtml")
(require 'rhtml-mode)
(add-to-list 'auto-mode-alist '("\\.erb$" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))

(require 'haml-mode)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))
(add-hook 'haml-mode-hook 'rinari-minor-mode)

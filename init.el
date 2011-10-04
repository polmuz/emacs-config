(require 'package)

;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
             '("elpa" . "http://tromey.com/elpa/"))

;; Add the user-contributed repository
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit
		      starter-kit-lisp
		      starter-kit-bindings
		      starter-kit-ruby
                      starter-kit-js
		      starter-kit-eshell
                      yasnippet-bundle
                      color-theme
                      projectile
                      auto-complete)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


(require 'color-theme)
(load-file "~/.emacs.d/color-theme-twilight.el")
(set-face-font 'default "-unknown-DejaVu Sans Mono-normal-normal-normal-*-14-*-*-*-m-0-iso10646-1")


;; auto-complete config
(require 'auto-complete-config)
(ac-config-default)

;; CSS autocomplete inifinite loop hack
(add-to-list 'ac-css-value-classes
	     '(border-width "thin" "medium" "thick" "inherit"))


;; projectile config
(require 'projectile)
(projectile-global-mode)

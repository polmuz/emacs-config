(require 'org-install)
(require 'org)

(add-hook 'org-mode-hook 'turn-on-font-lock)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(setq org-mobile-inbox-for-pull "~/orgfiles/orgmobile-pull-inbox.org")

(setq org-directory "~/orgfiles")
(setq org-default-notes-file (concat org-directory "/notes.org"))

(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline
			   "~/orgfiles/gtd.org"
			   "Tasks")
	 "* TODO %?\n  %i\n  %a")
        ("j" "Work Journal" entry (file+datetree
			      "~/orgfiles/work-journal.org")
	 "* %?\n %U\n  %i\n\n")
	("a" "Accomplishments" entry (file
			      "~/orgfiles/accomplishments.org")
	 "* %?\n %U\n  %i\n\n")
	("c" "Coding notes" entry (file
			      "~/orgfiles/coding-notes.org")
	 "* %?\n %U\n  %i\n %a\n")
	)
      )

(setq org-mobile-directory "~/orgfiles/orgmobile")

(setq org-mobile-files '("~/orgfiles/work-journal.org"
			 "~/orgfiles/accomplishments.org"))



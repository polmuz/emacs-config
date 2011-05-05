(require 'org-install)
(require 'org)

(add-hook 'org-mode-hook 'turn-on-font-lock)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


(setq org-agenda-files (list "~/orgfiles/work.org"
                             "~/orgfiles/home.org"
			     "~/orgfiles/projects.org"))

(setq org-log-done 'time)

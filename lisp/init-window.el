
;; ace-window - Quickly switch windows.
;; usage: M-p [a o e u h t n s -]
(require-package 'ace-window)
(global-set-key (kbd "M-p") 'ace-window)
(setq aw-keys '(?a ?o ?e ?u ?h ?t ?n ?s ?-))


(provide 'init-window)

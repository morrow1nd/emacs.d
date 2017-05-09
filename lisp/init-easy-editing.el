
;; turn on highlight mathcing brackets when your cursor is on one of the bracket
;; show-paren-mode will highlight any brackets, including () [] {} 「」 『』 【】 〖〗 〈〉 《》 ‹› «» ….
(show-paren-mode 1)
(setq show-paren-style 'parenthesis) ; highlight brackets
;(setq show-paren-style 'expression) ; highlight entire expression
;(setq show-paren-style 'mixed) ; highlight brackets if visible, else entire expression


;; smart-tab `smart-tab' attempts to expand the text before the point or indent the current line or selection.
; (require-package 'smart-tab)
; (global-smart-tab-mode 1)


;(require-package 'company)
(require-package 'auto-complete)
(ac-config-default)


;; find-file-in-project
; document: https://github.com/technomancy/find-file-in-project
;  M-x find-file-in-current-directory
;  M-x find-file-in-project (supports project(git/subversion/mercurial))
;  ...
(require-package 'find-file-in-project)
(if (eq system-type 'windows-nt)
    (setq ffip-find-executable "d:\\\\cygwin64\\\\bin\\\\find.exe"))


;; auto add braces pair
;;(require-package 'autopair)
;;(autopair-global-mode) ;; to enable in all buffers
; (add-hook 'c-mode-common-hook #'(lambda () (autopair-mode)))
;; maybe I should consider using electric-pair-mode
;; auto close bracket insertion. New in emacs 24
(electric-pair-mode 1)


;; syntax check tool: flycheck


(provide 'init-easy-editing)

(add-to-list 'load-path "~/.emacs.d/lisp")


(require 'init-site-lisp) ; Must come before elpa, as it may provide package.el
(require 'init-elpa)      ; Machinery for installing required packages

(require 'init-emacs)
(require 'init-themes)
(require 'init-easy-editing)
(require 'init-shell)
(require 'init-window)
(require 'init-c)


;;-----------------------------------------------
;; general configure
;;-----------------------------------------------


;;-----------------------------------------------
;; template configure
;;-----------------------------------------------


;; (require 'browse-url) ; part of gnu emacs

;; ;; translate the current or selected word in the internet
;; (defun my/translate-to-cn ()
;;   "Look up the word under cursor in Wikipedia.
;; If there is a text selection (a phrase), use that.

;; This command switches to browser."
;;   (interactive)
;;   (let (word url)
;;     (setq word
;;           (if (use-region-p)
;;               (buffer-substring-no-properties (region-beginning) (region-end))
;;             (current-word)))
;;     (setq word (replace-regexp-in-string " " "_" word))
;;     ;; jump to OS's default browser
;;     ;; (browse-url (concat "https://www.baidu.com/s?wd=" word))
;;     (setq url (concat "http://cn.bing.com/dict/search?q=" word))
;;     (eww url) ; emacs's own browser
;;     (message "Press q to come back")
;;     ))


;;-----------------------------------------------
;; custom generating configure
;;-----------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

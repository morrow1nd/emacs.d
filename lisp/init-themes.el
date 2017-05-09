;; copied from github.com/owainlewis/emacs.d

;(require-package 'sublime-themes)
;(require-package 'zenburn-theme)
(require-package 'monokai-theme)
;(require-package 'darktooth-theme)


;; If you don't customize it, this is the theme you get.
;(setq-default custom-enabled-themes '(brin))
;(setq-default custom-enabled-themes '(wombat))
(setq-default custom-enabled-themes '(monokai))

;; Ensure that themes will be applied even if they have not been customized
(defun reapply-themes ()
  "Forcibly load the themes listed in `custom-enabled-themes'."
  (dolist (theme custom-enabled-themes)
    (unless (custom-theme-p theme)
      (load-theme theme)))
  (custom-set-variables `(custom-enabled-themes (quote ,custom-enabled-themes))))

(add-hook 'after-init-hook 'reapply-themes)

;;; Setup font
;; copied from https://chriszheng.science/2015/04/26/Emacs-font-settings/
;; setting English character font
(set-face-attribute
 'default nil :font "Consolas")
;; Chinese Font
(dolist (charset '(han gb18030 chinese-gbk bopomofo cjk-misc gb18030))
  (set-fontset-font t
		    charset
		    (font-spec :family "新宋体" :size 14)))
;; add 3 more fonts for other symbol
(set-fontset-font t 'unicode "Symbola" nil 'append)
(set-fontset-font t 'unicode "Segoe UI Emoji" nil 'append)
(set-fontset-font t 'unicode "STIX" nil 'append)


(provide 'init-themes)

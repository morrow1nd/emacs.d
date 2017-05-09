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

;; use spaces instead of tabs when indenting, use C-q <tab> to insert a real TAB
(setq-default indent-tabs-mode nil)


;;-----------------------------------------------
;; template configure
;;-----------------------------------------------


(require 'browse-url) ; part of gnu emacs

;; translate the current or selected word in the internet
(defun my/translate-to-cn ()
  "Look up the word under cursor in Wikipedia.
If there is a text selection (a phrase), use that.

This command switches to browser."
  (interactive)
  (let (word url)
    (setq word
          (if (use-region-p)
              (buffer-substring-no-properties (region-beginning) (region-end))
            (current-word)))
    (setq word (replace-regexp-in-string " " "_" word))
    ;; jump to OS's default browser
    ;; (browse-url (concat "https://www.baidu.com/s?wd=" word))
    (setq url (concat "http://cn.bing.com/dict/search?q=" word))
    (eww url) ; emacs's own browser
    (message "Press q to come back")
    ))


;;-----------------------------------------------
;; custom generating configure
;;-----------------------------------------------

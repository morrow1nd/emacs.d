
;; disable tool-bar-mode
(tool-bar-mode -1)

;; disable menu-bar-mode
(menu-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; enable narrow-to-region
(put 'narrow-to-region 'disabled nil)

;; backup-file setup
(setq
 backup-directory-alist `(("." . "~/.backups"))
 backup-by-copying t
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)


(provide 'init-emacs)

;;; basic.el  --- all configs that do not rely on other packages.

;;; Commentary:

;;; Code:

(setq user-full-name "Jikai Lei")
(setq user-mail-address "hangelwen@gmail.com")

(menu-bar-mode 1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-font-lock-mode t)

(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'euc-cn)
(set-clipboard-coding-system 'euc-cn)
(set-clipboard-coding-system 'cn-gb-2312)
(set-terminal-coding-system 'euc-cn)
(set-buffer-file-coding-system 'euc-cn)
(set-selection-coding-system 'euc-cn)
;(set-selection-coding-system 'chinese-iso-8bit-with-esc)
(set-selection-coding-system 'cn-gb-2312)
(set-default-coding-systems 'euc-cn)
(setq locale-coding-system 'euc-cn)
(modify-coding-system-alist 'process "*" 'euc-cn)
(setq default-process-coding-system' (euc-cn . euc-cn))
(setq-default pathname-coding-system 'euc-cn)


;;; enable arrow navigation
(setq prelude-guru nil)

(global-linum-mode 1)

(setq resize-mini-windows t)
(column-number-mode t)
(setq default-fill-column 80)


;;back up
;;backup enable
(setq version-control t)
;;backup the oldest two version ,that is, the version before the first edit and before the second edit.
(setq kept-old-versions 2)
;;newest 5 version
(setq kept-new-versions 5)
;;all the other except the 7 above
(setq delete-old-versions t)
;;backup path
(setq backup-directory-alist '(("." . "~/.emacs.d/.emacs.tmp")))
;;
(setq backup-by-copying t)


;;; ido config
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(setq ido-use-filename-at-point 'guess)


;;save minibuffer history
(savehist-mode 1)
(require 'server)
(unless (server-running-p)
  (server-start))

(provide 'basic)
;;; basic.el ends here

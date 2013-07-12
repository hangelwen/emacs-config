;;; key-bindings.el --- global key bindings
;;
;; Filename: key-bindings.el
;; Description:
;; Author: Jikai Lei
;; Maintainer:
;; Created: Thu Jul 11 08:46:18 2013 (-0400)
;; Version:
;; Last-Updated:
;;           By:
;;     Update #: 0
;; URL:
;; Doc URL:
;; Keywords:
;; Compatibility:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change Log:
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:



(global-set-key [f1] 'info)

(global-set-key [f2] 'undo)
`
(global-set-key [f3] 'redo)

(global-set-key [f4] 'kill-this-buffer)
(global-set-key [f5] 'term)
(global-set-key [f6] 'dired-jump)

(global-set-key [f10] 'menu-bar-mode)

(global-set-key [f12] 'gdb)

(global-set-key [(home)] 'beginning-of-buffer)
(global-set-key [(end)] 'end-of-buffer)

(global-set-key [(meta g)] 'goto-line)
(global-set-key [(meta left)] 'backward-sexp)
(global-set-key [(meta right)] 'forward-sexp)

(global-set-key [(control o)] 'other-window)
(global-set-key [(control tab)] 'tabbar-forward)
(setq outline-minor-mode-prefix [(control o)])

(define-prefix-command 'ctl-z-map)
(global-set-key (kbd "C-z") 'ctl-z-map)
(global-set-key (kbd "C-z b") 'emacs-lisp-byte-compile)
(global-set-key (kbd "C-z c") 'calendar)
(global-set-key (kbd "C-z f m") 'flyspell-mode)
(global-set-key (kbd "C-z f b") 'flyspell-buffer)
(global-set-key (kbd "C-z g") 'gnus)
(global-set-key (kbd "C-x C-/") 'redo)
(global-set-key (kbd "C-z i") 'ispell-minor-mode)

;;debug
(global-set-key (kbd "C-z j") 'jdb)
(global-set-key (kbd "C-z k") 'browse-kill-ring)
(global-set-key (kbd "C-z l") 'lpr-buffer)


(global-set-key (kbd "C-z n n") 'narrow-to-region)
(global-set-key (kbd "C-z n w") 'widen)
(global-set-key (kbd "C-z o") 'occur)


(global-set-key (kbd "C-z q") 'kill-this-buffer)
(global-set-key (kbd "C-z r") 'query-replace-regexp)

(global-set-key (kbd "C-z t") 'term)
(global-set-key (kbd "C-z v") 'vi-mode)
(global-set-key (kbd "C-z u d") 'dired-jump)
(global-set-key (kbd "C-z u f") 'folding-mode)
(global-set-key (kbd "C-z u o") 'outline-minor-mode)
(global-set-key (kbd "C-z u s") 'services-look-up)
(global-set-key (kbd "C-z w c") 'emacs-wiki-change-project)
(global-set-key (kbd "C-z w f") 'emacs-wiki-find-file)
(global-set-key (kbd "C-z w h") 'emacs-wiki-preview-html)
(global-set-key (kbd "C-z w i") 'emacs-wiki-index)
(global-set-key (kbd "C-z w p") 'emacs-wiki-publish)
(global-set-key (kbd "C-z w s") 'emacs-wiki-search)


(global-set-key (kbd "C-z x") 'emacs-lisp-byte-compile-and-load)
(global-set-key (kbd "C-z y") 'clipboard-yank)
(global-set-key (kbd "C-z z") 'set-mark-command)
(global-set-key (kbd "C-z C-z") 'set-mark-command)


;;C-c C-k is used in term mode as term-char-mode
;(global-set-key (kbd "C-c C-k") 'browse-kill-ring)
(global-set-key (kbd "C-c C-q") 'auto-fill-mode)

;; webjump
(global-set-key "\C-cj" 'webjump)

;;smart compile
(global-set-key (kbd "<f9>") 'smart-compile)

(global-set-key [f7] 'compile-dwim-compile)
(global-set-key [f8] 'compile-dwim-run)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; key-bindings.el ends here

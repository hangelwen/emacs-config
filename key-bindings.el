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
;;     Update #: 121
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


;;;; F keys
(global-set-key [f1] 'info)
(global-set-key [f2] 'undo)
(global-set-key [f3] 'redo)
(global-set-key [f4] 'kill-this-buffer)
(global-set-key [f5] 'term)
(global-set-key [f6] 'dired-jump)
;;smart compile
(global-set-key [f7] 'compile-dwim-compile)
(global-set-key [f8] 'compile-dwim-run)
(global-set-key [f9] 'smart-compile)
(global-set-key [f10] 'menu-bar-mode)
(global-set-key [f12] 'gdb)

(global-set-key [(home)] 'beginning-of-buffer)
(global-set-key [(end)] 'end-of-buffer)

(global-set-key [(meta g)] 'goto-line)
(global-set-key [(meta left)] 'backward-sexp)
(global-set-key [(meta right)] 'forward-sexp)


;; make 'M-:' pretty-print
(global-set-key [remap eval-expression] 'pp-eval-expression)
;; make 'C-x C-e' pretty-print
(global-set-key [remap eval-last-sexp] 'pp-eval-last-sexp)


;;;; ctr-l as a prefix
(global-unset-key "\C-l")
(define-prefix-command 'ctl-l-map)


;; emacs elisp related
(global-set-key (kbd "C-l l c") 'emacs-lisp-byte-compile)
(global-set-key (kbd "C-l l l") 'emacs-lisp-byte-compile-and-load)
(global-set-key (kbd "C-l l b") 'eval-buffer)
(global-set-key (kbd "C-l l r") 'eval-region)


;; flyspell mode related
(global-set-key (kbd "C-l f m") 'flyspell-mode)
(global-set-key (kbd "C-l f p") 'flyspell-prog-mode)
(global-set-key (kbd "C-l f b") 'flyspell-buffer)
(global-set-key (kbd "C-l f r") 'flyspell-region)
;;ispell
(global-set-key (kbd "C-l i m") 'ispell-minor-mode)
(global-set-key (kbd "C-l i w") 'ispell-word)
(global-set-key (kbd "C-l i b") 'ispell-buffer)
(global-set-key (kbd "C-l i r") 'ispell-region)

;;debug
(global-set-key (kbd "C-l d j") 'jdb)
(global-set-key (kbd "C-l d g") 'gdb)

(global-set-key (kbd "C-l k") 'browse-kill-ring)

;; narrow and widen
(global-set-key (kbd "C-l n n") 'narrow-to-region)
(global-set-key (kbd "C-l n d") 'narrow-to-defun)
(global-set-key (kbd "C-l n p") 'narrow-to-page)
(global-set-key (kbd "C-l n w") 'widen)


;;occur and moccur
(global-set-key (kbd "C-l o o") 'occur)
(global-set-key (kbd "C-l o m") 'moccur)

(global-set-key (kbd "C-l q") 'kill-this-buffer)
(global-set-key (kbd "C-l r") 'query-replace-regexp)
(global-set-key (kbd "C-l t") 'term)


(global-set-key (kbd "C-l =") 'er/expand-region)
(global-set-key (kbd "C-l n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-l p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-l SPC") 'set-rectangular-region-anchor)

(global-set-key (kbd "C-l c") 'calendar)


(global-set-key (kbd "C-c C-q") 'auto-fill-mode)
;; webjump
(global-set-key "\C-cj" 'webjump)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; key-bindings.el ends here

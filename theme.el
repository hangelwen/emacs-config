;;; theme.el --- theme settings
;;
;; Filename: theme.el
;; Description:
;; Author: Jikai Lei
;; Maintainer:
;; Created: Thu Jul 11 11:24:36 2013 (-0400)
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

;(prelude-ensure-module-deps '(color-theme-solarized))
;(setq solarized-termcolors 256)
;(load-theme 'solarized-dark t)

;;;; the default solarized theme in the repo does not work for me in the
;;;; terminal. Now I'm using the mwolson's fork (https://github.com/mwolson/emacs-color-theme-solarized)
;;;; This also have different colors under GUI and terminal, but much better.
;;;; To make this work:
;;;; a. install rxvt-unicode-256color
;;;; b. config .Xresource to using solarized theme
;;;; c. export TERM="rxvt-unicode-256color" in .zhsrc
;;;; d. start emacs daemon.
(add-to-list 'custom-theme-load-path "~/.emacs.d/personal/site-lisp/emacs-color-theme-solarized-master/")
(load-theme 'solarized-dark t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; theme.el ends here

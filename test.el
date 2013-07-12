;;; test.el ---
;;
;; Filename: test.el
;; Description:
;; Author: Jikai Lei
;; Maintainer:
;; Created: Thu Jul 11 00:00:58 2013 (-0400)
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
(load-file "~/.emacs.d/personal/site-lisp/webjump-plus.el")
(require 'webjump-plus)

(setq webjump-sites
      (append '(
                ("My Home Page" . "cse.msu.edu")
                )
              webjump-plus-sites
              webjump-sample-sites))

;(set-face-background 'magit-item-highlight "#696969")
;(set-face-background 'diff-file-header "#f21212")
;(set-face-foreground 'diff-context "#666666")
;(set-face-foreground 'diff-added "#00cc33")
;(set-face-foreground 'diff-removed "#ff0000")

;; (defun update-diff-colors ()
;;   "update the colors for diff faces"
;;   (set-face-attribute 'diff-added nil
;;                       :foreground "white" :background "blue")
;;   (set-face-attribute 'diff-removed nil
;;                       :foreground "white" :background "red3")
;;   (set-face-attribute 'diff-changed nil
;;                       :foreground "white" :background "purple"))
;; (eval-after-load "diff-mode"
;;   '(update-diff-colors))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; test.el ends here

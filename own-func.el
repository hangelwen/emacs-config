;;; basic.el  --- all configs that do not rely on other packages.

;;; Commentary:

;;; Code:

(load-file "~/Dropbox/emacs/myconf/xcscope.el")
(require 'xcscope)
;;this is for automatically update database, see xcscope+.el for more
;;information
(load-file "~/Dropbox/emacs/myconf/xcscope+.el")
(require 'xcscope+)

;;insert time at point
(defun insert-time ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d %R"))
  (move-beginning-of-line 1)
  )
(define-key global-map [(control c)(d)] 'insert-time)

;;insert add comment at point
(defun insert-myadd ()
  (interactive)
  (insert comment-start (format-time-string " added by leijikai %Y-%m-%d %R"))
  (move-beginning-of-line 1)
)
(define-key global-map [(control c)(a)] 'insert-myadd)

;;insert time at point
(defun insert-myedit ()
  (interactive)
  (insert comment-start (format-time-string " edited by leijikai %Y-%m-%d %R"))
  ;;move to the beginning of the line,because we may need to modify //,
  ;;depending in what kind of file we are in
  (move-beginning-of-line 1)
  )
(define-key global-map [(control c)(e)] 'insert-myedit)

;;insert time at point
(defun insert-minutes ()
  (interactive)
  (insert  "************************************************************\n")
  (insert  (format-time-string "*** Meeting minutes by jikai %Y-%m-%d %R, %A\n"))
  (insert  "************************************************************\n\n\n")
  )
(define-key global-map [(control c)(m)] 'insert-minutes)

;;insert TODO
(defun insert-todo ()
  (interactive)
  (insert comment-start (format-time-string " TODO:[%Y-%m-%d %R] "))
  ;;(move-beginning-of-line 1)
  )
;;insert revision information
(defun insert-revision (version)
  (interactive "sVersion:")
  (insert comment-start " Revision " version (format-time-string ":[%Y-%m-%d %R] by Jikai Lei") comment-end)
  (newline)
  (insert comment-start)
  ;;(move-beginning-of-line 1)
  )

;;ssh to hpc
(defun hpc ()
  (interactive)
  (find-file "/ssh:leijikai@hpc.msu.edu:~/"))

;;open dropbox code folder
(defun code ()
  (interactive)
  (find-file "~/Dropbox/research/code/trunk"))

;;;Makingscriptsexecutableonsave
;;;http://www.emacswiki.org/emacs/MakingScriptsExecutableOnSave
(defun hlu-make-script-executable ()
  "If file starts with a shebang, make `buffer-file-name' executable"
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-min))
      (when (and (looking-at "^#!")
		 (not (file-executable-p buffer-file-name)))
	(set-file-modes buffer-file-name
			(logior (file-modes buffer-file-name) #o100))
	(message (concat "Made " buffer-file-name " executable"))))))

(add-hook 'after-save-hook 'hlu-make-script-executable)


(provide 'own-func)
;;; own-func.el ends here

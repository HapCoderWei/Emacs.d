;; I use sbcl, `C-h v slime-read-interactive-args RET` for details
;; you need install the program sbcl, of course
(setq inferior-lisp-program "/usr/bin/sbcl")

(require 'slime)
;(slime-setup)
;(setq slime-net-coding-system 'utf-8-unix)

(eval-after-load 'slime
   '(progn
      (add-to-list 'load-path (concat (directory-of-library "slime") "/contrib"))
      (setq slime-contribs '(slime-fancy))
      (setq slime-protocol-version 'ignore)
      (setq slime-net-coding-system 'utf-8-unix)
      (setq slime-complete-symbol*-fancy t)
))
(slime-setup '(slime-repl))
(provide 'init-slime)
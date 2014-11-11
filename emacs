;; Package needed in order to install plugins
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)

(package-initialize)

;;; Vim integration in emacs
(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(setq-default indent-tabs-mode nil) ;; Replace tab to spaces

;; Don't indent brace (not 'gnu style')
(setq c-default-style "linux"   ;; linux kernel style editing
      tab-width 8               ;; standard tab width
      c-basic-offset 4)         ;; insert 4 spaces when automatic indent (for c)

(setq tab-stop-list (number-sequence 4 120 4)) ;; tab stop = 4 (max == 120)

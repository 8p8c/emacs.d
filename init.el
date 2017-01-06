(menu-bar-mode -1)
(tool-bar-mode -1)

(set-default-font "Hack-12")

(require 'cl-lib)

(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(require 'smart-tabs-mode)
(smart-tabs-insinuate 'c 'ruby 'java)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(require 'whitespace)
(setq-default whitespace-style '(face tabs trailing spaces
                                      space-before-tab newline empty
                                      space-mark
                                      tab-mark newline-mark))
;; (setq-default whitespace-style '(face tabs trailing spaces
;;                                       space-before-tab newline empty
;;                                       space-after-tab space-mark
;;                                       tab-mark newline-mark))
(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
      '(
        (space-mark 32 [183] [46]) ; 32 SPACE, 183 MIDDLE DOT, 46 FULL STOP
        ;;(space-mark 32 [11825] [46]) ; 32 SPACE, 183 WORD SEPARATOR MIDDLE DOT, 46 FULL STOP
        (newline-mark 10 [182 10]) ; 10 LINE FEED
        ;;(tab-mark 9 [9655 9] [92 9]) ; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE
        ;;(tab-mark 9 [8594 9] [92 9]) ; 9 TAB, 8594 RIGHTWARDS ARROW
        ;;(tab-mark 9 [9144 9] [92 9]) ; 9 TAB, LEFT VER­TI­CAL BOX LINE
        (tab-mark 9 [9474 9] [92 9]) ; 9 TAB, BOX DRAWING LIGHT VERTICAL
        ))
(global-whitespace-mode 1)

;; (require 'highlight-indent-guides)
;; (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
;; (setq highlight-indent-guides-method 'character)

(require 'fill-column-indicator)
(setq fci-handle-truncate-lines nil)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

(load-theme 'material t)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'eclim)
(add-hook 'java-mode-hook 'eclim-mode)
;; (require 'eclimd)

(global-set-key (kbd "C-x g") 'magit-status)

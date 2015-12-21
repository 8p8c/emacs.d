(menu-bar-mode -1)
(tool-bar-mode -1)

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
(setq-default whitespace-style '(face tabs spaces trailing space-before-tab newline empty space-after-tab space-mark tab-mark newline-mark))
(global-whitespace-mode 1)

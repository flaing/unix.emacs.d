;; Packages
;; Define package repositories
(require 'package)
(global-linum-mode 't)

(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; package-archieves
;; (add-to-list 'package-archives
;;             '("marmalade" . "http://marmalade-repo.org/packages/") t)
;; (add-to-list 'package-archives
;;             '("tromey" . "http://tromey.com/elpa/") t)
;; (add-to-list 'package-archives
;;             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; Load and activate emacs packages. Do this first so that the
;; packages are loaded before you start trying to modify them.
;; This also sets the load path.
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
;; (when (not package-archive-contents)
;;   (package-refresh-contents))

;; The packages you want installed. You can also install these
;; manually with M-x package-install
;; Add in your own as you wish:
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-seleted-packages
   (quote
    (;;scala-mode2
     helm
     better-default
     ;;haskell-mode
     nrepl-sync
     clojure-mode
     clojure-mode-extra-font-locking))))

(load-theme 'tango-dark t)
 (custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (;; :inherit nil :stipple nil                         
                ;          :background "dark olive green"
                ;          :foreground "white"
                ;;          :inverse-video nil
                ;;          :box nil
                ;;          :strike-through nil
                ;;          :overline nil
                ;;          :underline nil
                ;;         :slant normal
                ;;         :weight normal
                         :height 100
                         :width medium
                ;;         :foundry "nil"
                         :family "Courier")))))

;; haskell
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;; jsx-mode
(require 'jsx-mode)
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . jsx-mode))
;; web-mode
(add-to-list 'auto-mode-alist '("\\.api\\'" . web-mode))
(add-to-list 'auto-mode-alist '("/some/react/path/*\\.js[x]?\\'" . web-mode))

;; helm-mode
(helm-mode t)

;; company-mode
(global-company-mode)
;;(add-hook 'cider-repl-mode-hook #'company-mode)
;;(add-hook 'cider-mode-hook #'company-mode)

;; c-path-from-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


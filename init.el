(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#ffffff" "#ffffff" "#ffffff" "#ffffff" "#928a7e" "#ffffff" "#ffffff" "gray90"])
 '(c-basic-offset 8)
 '(company-backends
   '(company-bibtex company-web-slim company-web-jade company-web-html company-c-headers
                    (company-keywords company-semantic company-capf company-clang company-bbdb company-dabbrev-code company-files)
                    company-dabbrev-code
                    (company-auctex-macros company-auctex-symbols company-auctex-environments)
                    company-auctex-bibs company-auctex-labels company-cmake company-files company-oddmuse company-dabbrev))
 '(custom-enabled-themes '(Lambda))
 '(custom-safe-themes
   '("652b55e5a130aa07f79c4c2d2101ff0fd6a3e189cdcd32654dc001a5070e533d" "7a4cc5d3766edb4ae68fe1decdbdac28a6891f2214659753d6c1cf6a953652a4" "bd4d3779a43199eecbf1caeb00c9de1d14b0a11d9eaf415e80f1e5a8a872c935" "fbef36c483d440ef0454ba905f0c686c3c802ebacf3e4050f9163809556cec19" "c453c41cabd16e5601297e29a43aa42db6571e9e6e5264d44a4ae10a80a9f85d" "37f54916e3e4cb0705176041c8a059b720e743040bcf77e5584ee79e90d529bd" "c52372f8865c19ac71477c35b06428f4b0fa989f092c0f64636d76d8096a1f1d" "4b2e7018ab458905983882edd73c89dbf4bf76d2e229e66bdcaf2ed02795ed54" "03aa756e02e64b21c0f53bd525c4901d52baec1f8f5a2bc332748b6943a7875b" "f76ebf242bba5e36f804980fdf07ee95306fa7c75fb3d4f63eb150c274a3dd7a" "b7bbd9fddd6796033d40ca9c4c1d8bfcc18b5963e08443cd60383d048245e24a" "bf083d5c07cb9301a7e798a6bd2e224e55cb40abb6006dd5eb47f9ba94548bcb" "715c5ce3485b5e442b413cfdaaba4ab22b9836983d9856541284ea0420ff73b4" "01254ddc7012bfc7bce3cc64e82f07c7f28fb827581a6aa98f497a30c3ea1a36" "4068a6bb6b5b143af76c843f1f72b3219d8f53691d9583c38c81943fcd807e78" "c4c83a3d29a78c7f30380c150658ce7eee91ddef6159cbbb8f6323585b4fd9f4" "11d4aef12dd4b9c008e005510a4cc35b3e797010d6ed7906cb6a3eaf4041590c" "0882034fa346f7288c51c93bb18664f30f4ca567e15fa67ea5c99099cde03711" "37768a79b479684b0756dec7c0fc7652082910c37d8863c35b702db3f16000f8" "d0fd069415ef23ccc21ccb0e54d93bdbb996a6cce48ffce7f810826bb243502c" "ffba0482d3548c9494e84c1324d527f73ea4e43fff8dfd0e48faa8fc6d5c2bc7" "8f5b54bf6a36fe1c138219960dd324aad8ab1f62f543bed73ef5ad60956e36ae" "a36614356924f3cffc450c43d3ed8dace20218b41a1201f9c1173a1a0e0ac297" "3d3d7383a479aed14076ab057cc4bd6018cb6962ce4b197971d379eb99d0f420" "c832527516f15808747ca5c871ecba3a9f69d9b2a4ca8c63bcbb54ffbee462d1" "fa1ad9f82da8bed6eafa30379bef8e3c7531c76a16f3873a786ebafbca1474ca" "6ed2e9c641e0a1a440338fc81c2ac0fd52f8f434ff249dbd079c3e678fd7b1cc" "5d9639adbc5d2b31e3491ad378e342df9a69631c5d8fa6bd0802f6591aeddfdd" "aea4df979f530691c245ce8a597dde7f6fdb673971ea4a8d6f68024829e46bfb" "af3c418e2d74e769cfb6363be69afdeb8d22839f48fb5283036703b2a7e31f3c" "bab2326f7c5e8e9b6fd5692b0ef21a5bb9f650f8010ab316e0c642af4e0909f2" "41fbaada5d9f7605d393c49a2f75f05be2d10374600f5a8e31247e61b811377f" "5024e7c605ffbc687a5e2d0abcaddcad30d518a54b6974bb5ae616d6a83918a1" "75d8e70f2aa9768177c3595b003acb8fa5ee806b5e78e401f790ceb0ca0aaf8d" "89908a100287391ff0a5bc733f9f31fba7bc833094cbe92a8bfc9d9dd378a7e2" default))
 '(debug-on-error nil)
 '(help-at-pt-display-when-idle '(flymake-overlay) nil (help-at-pt))
 '(help-at-pt-timer-delay 0.3)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(jdee-server-dir "~/myjars")
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(bison-mode company-bibtex lsp-mode company-web anaconda-mode company-quickhelp typescript-mode org-fragtog sweeprolog multiple-cursors iedit smartparens paredit racket-mode company-c-headers company-auctex crdt rust-mode dockerfile-mode projectile evil yaml-mode vala-mode org-tree-slide org-modern org-super-agenda org-superstar org-attach-screenshot org-autolist org-auto-expand org-appear org-alert org-agenda-property cff org ggtags meson-mode all-the-icons auto-complete neotree haskell-mode which-key auctex))
 '(scroll-bar-mode nil)
 '(send-mail-function 'mailclient-send-it)
 '(tab-width 4)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-error-description-error ((t (:foreground "#ffffff" :weight bold))))
 '(TeX-error-description-tex-said ((t (:foreground "#928a7e"))))
 '(alert-urgent-face ((t (:foreground "#ffffff" :weight bold))))
 '(ansi-color-blue ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(company-template-field ((t (:background "#222222" :foreground "#ffffff"))))
 '(compilation-error ((t (:foreground "#ffffff" :weight bold))))
 '(compilation-info ((t (:foreground "#ffffff" :weight bold))))
 '(compilation-mode-line-exit ((t (:inherit compilation-info :foreground "#ffffff" :weight bold))))
 '(compilation-mode-line-fail ((t (:weight bold :foreground "#928a7e" :inherit compilation-error))))
 '(fill-column-indicator ((t (:foreground "dim gray"))))
 '(flycheck-error-list-info ((t (:foreground "#ffffff"))))
 '(font-latex-bold-face ((t (:foreground "#c0c5ce" :inherit bold))))
 '(font-latex-italic-face ((t (:foreground "#c0c5ce" :inherit italic))))
 '(font-latex-math-face ((t (:foreground "#928a7e" :weight bold))))
 '(font-latex-script-char-face ((t (:foreground "#c0c5ce"))))
 '(font-latex-sectioning-2-face ((t (:foreground "#ffffff" :weight bold :height 1.1))))
 '(font-latex-sectioning-3-face ((t (:foreground "#ffffff" :weight bold))))
 '(font-latex-sectioning-4-face ((t (:foreground "#ffffff" :weight bold))))
 '(font-latex-warning-face ((t (:foreground "#c0c5ce" :inherit bold))))
 '(font-lock-builtin-face ((t (:foreground "#ffffff" :weight bold))))
 '(font-lock-function-call-face ((t (:foreground "#ffffff" :weight bold))))
 '(font-lock-function-name-face ((t (:foreground "#ffffff" :weight bold))))
 '(font-lock-preprocessor-face ((t (:weight semi-bold))))
 '(font-lock-string-face ((t (:foreground "#928a7e"))))
 '(font-lock-type-face ((t (:foreground "#c0c5ce" :weight semi-bold))))
 '(jdee-font-lock-constant-face ((t (:foreground "#ffffff" :weight bold))))
 '(jdee-font-lock-modifier-face ((t (:foreground "#ffffff" :weight bold))))
 '(jdee-font-lock-package-face ((t (:foreground "#928a7e"))))
 '(jdee-font-lock-private-face ((t (:foreground "#ffffff" :weight bold))))
 '(jdee-font-lock-public-face ((t (:foreground "#ffffff" :weight bold))))
 '(line-number-current-line ((t (:background "gray8" :foreground "light gray"))))
 '(neo-banner-face ((t (:foreground "#c0c5ce" :weight bold))))
 '(neo-dir-link-face ((t (:foreground "#ffffff" :weight bold))))
 '(neo-file-link-face ((t (:foreground "#c0c5c7"))))
 '(org-agenda-date ((t (:foreground "white"))))
 '(org-agenda-date-weekend ((t (:foreground "white" :weight bold))))
 '(org-agenda-structure ((t (:foreground "white"))))
 '(org-headline-done ((t (:foreground "dark gray"))))
 '(org-todo ((t (:foreground "wheat" :weight bold))))
 '(racket-xp-def-face ((t (:background "gray12" :foreground "white smoke" :underline t))))
 '(racket-xp-tail-position-face ((t (:background "gray12" :foreground "white smoke"))))
 '(racket-xp-tail-target-face ((t (:background "gray12" :foreground "white smoke" :underline (:color foreground-color :style wave :position nil)))))
 '(racket-xp-use-face ((t (:background "gray12" :foreground "white smoke"))))
 '(term-color-bright-cyan ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(term-color-bright-green ((t (:background "#928a7e" :foreground "#928a7e"))))
 '(term-color-bright-red ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(term-color-cyan ((t (:background "#928a7e" :foreground "#928a7e"))))
 '(term-color-green ((t (:background "#928a7e" :foreground "#928a7e"))))
 '(term-color-red ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(term-color-yellow ((t (:background "#ffffff" :foreground "#ffffff"))))
 '(whitespace-line ((t (:background "gray20" :foreground "#aaaaaa")))))
;; Windmove keybindings
(windmove-default-keybindings 's)

;; Terminal Binding
;; (global-set-key (kbd "C-c t") (kbd "M-! urxvt RET"))

;; Enable Projectile globally (projectile-global-mode)
(defun projectile-term ()
  (interactive)
  (let ((root (projectile-project-root))
        (buff-name (concat " [term] " (projectile-project-root))))
    (if (get-buffer buff-name)
        (switch-to-buffer-other-window buff-name)
      (progn 	(split-window-sensibly (selected-window))
                (other-window 1)
                (setq default-directory root)
                (ansi-term (getenv "SHELL"))
                (rename-buffer buff-name t)))))
(global-set-key (kbd "C-c C-t") 'projectile-term)

(defun urxvt ()
  (interactive)
  (let ((urxvt "urxvt"))
    (start-process urxvt nil urxvt "-cd" (projectile-project-root))))

(global-set-key (kbd "C-c t") 'urxvt)

(defun urxvt-dir ()
  (interactive)
  (let ((urxvt "urxvt"))
    (start-process urxvt nil urxvt "-cd"
                   (file-name-directory (or buffer-file-name load-file-name)))))

(global-set-key (kbd "C-c y") 'urxvt-dir)

;; 80 character limit.
(add-hook 'text-mode-hook #'auto-fill-mode)
(setq-default fill-column 80)
(add-hook 'prog-mode-hook #'auto-fill-mode)
(add-hook 'c-mode-common-hook   #'auto-fill-mode)
(add-hook 'emacs-lisp-mode-hook #'auto-fill-mode)
(add-hook 'java-mode-hook       #'auto-fill-mode)
(add-hook 'lisp-mode-hook       #'auto-fill-mode)
(add-hook 'perl-mode-hook       #'auto-fill-mode)
(add-hook 'sh-mode-hook         #'auto-fill-mode)
(add-hook 'prog-mode-hook #'display-fill-column-indicator-mode)

;; To-Do List Bind
;; C-x r j a
(set-register ?a '(file . "~/Documentos/ToDo.org"))

;; Load Bison-mode
(require 'bison-mode)

;; Load evil-mode
(require 'evil)
(evil-mode 1)
(setcdr evil-insert-state-map nil)
(define-key evil-insert-state-map
            (read-kbd-macro evil-toggle-key) 'evil-normal-state)
(define-key evil-insert-state-map [escape] 'evil-normal-state)
(define-key evil-normal-state-map "\C-e" 'evil-end-of-line)
(define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
(setq evil-normal-state-cursor '(box "#c0c5ce")
      evil-insert-state-cursor '(box "#c0c5ce")
      evil-visual-state-cursor '(box "#c0c5ce"))
(setq evil-default-state 'insert)
;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(setq projectile-switch-project-action 'neotree-projectile-action)

;; Load 'all-the-icons
;;(defun neotree-icons (display-graphic-p)
;;(when (display-graphic-p)
(require 'all-the-icons)
;;))
;;(add-hook 'server-after-make-frame-hook 'neotree-icons)

;; Delete text that is being selected
(delete-selection-mode 1)

;; PDF-opener : Zathura
(eval-after-load "tex"
  '(progn
     (setq TeX-view-program-list '(("Zathura" "zathura %o")))
     (setq TeX-view-program-selection '((output-pdf "Zathura")))))

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;; move to the neotree buffer
(global-set-key (kbd "s-s") 'neotree-show)
;; Set the neo-window-width to the current width of the
;; neotree window, to trick neotree into resetting the
;; width back to the actual window width.
;; Fixes: https://github.com/jaypei/emacs-neotree/issues/262
(eval-after-load "neotree"
  '(add-to-list 'window-size-change-functions
                (lambda (frame)
                  (let ((neo-window (neo-global--get-window)))
                    (unless (null neo-window)
                      (setq neo-window-width (window-width neo-window)))))))

;; (setq neo-autorefresh t)

;; Prevent using UI dialogs for prompts
(setq use-dialog-box nil)

;; Kill whole-line, copying it to clipboard
;; Sets `C-c d` to `M-x kill-whole-line`
(global-set-key (kbd "C-c d") 'kill-whole-line)

;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)

;; Sets the neotree buffer wodth to be variable.
(setq neo-window-fixed-size nil)

;; Disables line numbers for neotree
(defun my/neotree-hook (_unused)
  (display-line-numbers-mode -1))
(add-hook 'neo-after-create-hook 'my/neotree-hook)

;; Sets the theme for neotree
(setq neo-theme 'icons)
;; (defun set-neotree-theme (_unused)
;;   (interactive)
;; (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; )
;; (add-hook 'server-after-make-frame-hook 'set-neotree-theme)

;; Set the neo-window-width to the current width of the
;; neotree window, to trick neotree into resetting the
;; width back to the actual window width.
;; Fixes: https://github.com/jaypei/emacs-neotree/issues/262
(eval-after-load "neotree"
  '(add-to-list 'window-size-change-functions
                (lambda (frame)
                  (let ((neo-window (neo-global--get-window)))
                    (unless (null neo-window)
                      (setq neo-window-width (window-width neo-window)))))))

;; Delete trailing whitespace binding
(global-set-key (kbd "s-d") 'delete-trailing-whitespace)

;; 'Uncomment-region binding
(global-set-key (kbd "C-c v") 'uncomment-region)
(global-set-key (kbd "C-c c") 'comment-region)

;; Path of backup files
(setq backup-directory-alist `(("." . "~/.saves")))

;; Hide Show
(defun toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (or column
       (unless selective-display
         (1+ (current-column))))))

(defun toggle-hiding (column)
  (interactive "P")
  (if hs-minor-mode
      (if (condition-case nil
              (hs-toggle-hiding)
            (error t))
          (hs-show-all))
    (toggle-selective-display column)))

(load-library "hideshow")
;; (global-set-key (kbd "C-+") 'toggle-hiding)
;; (global-set-key (kbd "C-\\") 'toggle-selective-display)
(global-set-key (kbd "C-+") 'hs-show-block)
(global-set-key (kbd "C--") 'hs-hide-block)
(global-set-key (kbd "C-c C--") 'hs-hide-level)
(global-set-key (kbd "C-c C-+") 'hs-show-all)

(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

;; Org-mode
(require 'org)
(require 'org-attach-screenshot)
(require 'org-autolist)
(require 'org-auto-expand)
(require 'org-appear)
(require 'org-alert)
(require 'org-agenda-property)
;; (require 'org-ac)
(require 'org-super-agenda)
(require 'org-tree-slide)
(require 'org-modern)
(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)
(with-eval-after-load 'org (global-org-modern-mode))
(require 'org-superstar)
;; Agenda
(setq calendar-date-style 'european)
(setq calendar-week-start-day 1)
(setq org-agenda-files '("~/Documentos/ToDo.org"))
;; Diary
(setq diary-file "~/Documentos/diary.org")
(setq org-agenda-diary-file "~/Documentos/diary.org")
(setq org-agenda-include-diary t)
(global-set-key (kbd "C-c a") 'org-agenda)
(require 'org)
(require 'ox-latex)
(setq org-latex-create-formula-image-program 'dvipng)
(org-babel-do-load-languages 'org-babel-load-languages '((latex . t)))
;; iedit
(require 'iedit)
(org-toggle-pretty-entities)

(setq
 ;; Edit settings
 org-auto-align-tags nil
 org-tags-column 0
 ;; org-catch-invisible-edits 'show-and-error
 ;; org-special-ctrl-a/e t
 ;; org-insert-heading-respect-content t


 ;; Org styling, hide markup etc.
 ;; org-hide-emphasis-markers t
 ;; org-pretty-entities t
 org-ellipsis "…"

 ;; Agenda styling
 org-agenda-tags-column 0
 org-agenda-block-separator ?─
 org-agenda-time-grid
 '((daily today require-timed)
   (800 1000 1200 1400 1600 1800 2000)
   " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
 org-agenda-current-time-string
 "⭠ now ─────────────────────────────────────────────────")

(setq org-hide-emphasis-markers t)

;; Source code navigation
(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)
(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)
(define-key ggtags-mode-map (kbd "C-f") 'ggtags-find-tag-dwim)

;; Quickly switch between C/C++ header and
;; a source file with the same name located
;; in the directory tree or a git repository.
(require 'cff)
;; defines shortcut for find source/header file for the current
;; file
(add-hook 'c++-mode-hook
          (lambda ()
            (define-key c-mode-base-map (kbd "M-o") 'cff-find-other-file)))
(add-hook 'c-mode-hook
          (lambda ()
            (define-key c-mode-base-map (kbd "M-o") 'cff-find-other-file)))

;; Auto-complete [Company mode]
(require 'company-auctex)
(company-auctex-init)
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
(define-key company-active-map (kbd "<tab>") #'company-complete-selection)

(require 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)

(require 'company-web)
(add-to-list 'company-backends 'company-web-html)
(add-to-list 'company-backends 'company-web-jade)
(add-to-list 'company-backends 'company-web-slim)

;; BibTeX
(add-to-list 'company-backends 'company-bibtex)

;; Smartparens
(require 'smartparens-config)
(sp-pair "`" nil :actions :rem)
(sp-pair "'" nil :actions :rem)
(sp-pair "~" nil :actions :rem)
(sp-local-pair 'java-mode  "/* " " */")
(sp-local-pair 'typescript-mode  "/* " " */")
(sp-local-pair 'js-mode  "/* " " */")


;; Always start smartparens mode in racket-mode.
(add-hook 'racket-repl-mode #'smartparens-mode)
(smartparens-global-mode t)
(require 'racket-xp)
(add-hook 'racket-mode-hook #'racket-xp-mode)

;; Move selected region (or line) up/down
(defun move-text-internal (arg)
  (cond
   ((and mark-active transient-mark-mode)
    (if (> (point) (mark))
        (exchange-point-and-mark))
    (let ((column (current-column))
          (text (delete-and-extract-region (point) (mark))))
      (forward-line arg)
      (move-to-column column t)
      (set-mark (point))
      (insert text)
      (exchange-point-and-mark)
      (setq deactivate-mark nil)))
   (t
    (let ((column (current-column)))
      (beginning-of-line)
      (when (or (> arg 0) (not (bobp)))
        (forward-line)
        (when (or (< arg 0) (not (eobp)))
          (transpose-lines arg)
          (when (and (eval-when-compile
                       '(and (>= emacs-major-version 24)
                             (>= emacs-minor-version 3)))
                     (< arg 0))
            (forward-line -1)))
        (forward-line -1))
      (move-to-column column t)))))

(defun move-text-down (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines down."
  (interactive "*p")
  (move-text-internal arg))

(defun move-text-up (arg)
  "Move region (transient-mark-mode active) or current line
  arg lines up."
  (interactive "*p")
  (move-text-internal (- arg)))


(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)

;; Source: https://www.emacswiki.org/emacs/misc-cmds.el
(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive)
  (revert-buffer :ignore-auto :noconfirm))

;; If 'word was used, words that contain the escape character '\' would be
;; trimmed.
;; Italic words binding LateX.
(defun italic-word ()
  "Italic word binding for LateX."
  (interactive)
  (if (use-region-p)
      (progn
        (save-excursion
        (goto-char (region-beginning))
        (insert "\\textit{"))
        (save-excursion
          (goto-char (region-end))
          (insert "}")))
    (progn
      (insert "\\textit{")
      (save-excursion
        (insert "}")))))

;; Bold words binding LateX.
(defun bold-word ()
  "Italic word binding for LateX."
  (interactive)
  (if (use-region-p)
      (progn
        (save-excursion
        (goto-char (region-beginning))
        (insert "\\textbf{"))
        (save-excursion
          (goto-char (region-end))
          (insert "}")))
    (progn
      (insert "\\textbf{")
      (save-excursion
        (insert "}")))))

(defun code-word ()
  "Code word binding for LateX."
  (interactive)
  (if (use-region-p)
      (progn
        (save-excursion
        (goto-char (region-beginning))
        (insert "\\texttt{"))
        (save-excursion
          (goto-char (region-end))
          (insert "}")))
    (progn
      (insert "\\texttt{")
      (save-excursion
        (insert "}")))))

(defun sc-word ()
  "Code word binding for LateX."
  (interactive)
  (if (use-region-p)
      (progn
        (save-excursion
        (goto-char (region-beginning))
        (insert "\\textsc{"))
        (save-excursion
          (goto-char (region-end))
          (insert "}")))
    (progn
      (insert "\\textsc{")
      (save-excursion
        (insert "}")))))

(defun lr-vert ()
  "Left-right vector word binding for LateX."
  (interactive)
  (if (use-region-p)
      (progn
        (save-excursion
        (goto-char (region-beginning))
        (insert "\\lvert"))
        (save-excursion
          (goto-char (region-end))
          (insert "\\rvert")))
    (progn
      (insert "\\lvert")
      (save-excursion
        (insert "\\rvert")))))

(defun math-mode ()
  "Left-right vector word binding for LateX."
  (interactive)
  (if (use-region-p)
      (progn
        (save-excursion
        (goto-char (region-beginning))
        (insert "\\["))
        (save-excursion
          (goto-char (region-end))
          (insert "\\]")))
    (progn
      (insert "\\[")
      (save-excursion
        (insert "\\]")))))

(defun math-mode-inline ()
  "Inline math mode binding for LaTeX."
  (interactive)
  (if (use-region-p)
      (progn
        (save-excursion
        (goto-char (region-beginning))
        (insert "$"))
        (save-excursion
          (goto-char (region-end))
          (insert "$")))
    (progn
      (insert "$")
      (save-excursion
        (insert "$")))))

(defun backslash ()
  "Defines '\\' for org mode."
  (interactive)
  (insert "\\"))

(bind-key (kbd "M-o i") #'italic-word LaTeX-mode-map)
(bind-key  (kbd "M-o b") #'bold-word LaTeX-mode-map)
(bind-key  (kbd "M-o t") #'code-word LaTeX-mode-map)
(bind-key  (kbd "M-o s") #'sc-word LaTeX-mode-map)
(bind-key  (kbd "$") #'math-mode-inline LaTeX-mode-map)
(bind-key  (kbd "$") #'math-mode-inline org-mode-map)
(bind-key  (kbd "\\") #'backslash org-mode-map)

;; Multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-l") 'mc/edit-lines)

(setenv "PATH" (concat "/Library/TeX/texbin:"
                       (getenv "PATH")))
(add-to-list 'exec-path "/Library/TeX/texbin")

(require 'sweeprolog)

(define-key org-mode-map (kbd "<M-up>") nil)
(define-key org-mode-map (kbd "<M-down>") nil)
(define-key org-mode-map (kbd "<M-left>") nil)
(define-key org-mode-map (kbd "<M-right>") nil)
(define-key org-mode-map (kbd "<M-S-left>") nil)
(define-key org-mode-map (kbd "<M-S-right>") nil)
(define-key org-mode-map (kbd "<C-S-left>") nil)
(define-key org-mode-map (kbd "<C-S-right>") nil)
(define-key org-mode-map [C-right] 'org-metaright)
(define-key org-mode-map [C-left] 'org-metaleft)
(define-key org-mode-map [S-return] 'org-insert-todo-heading)
(defadvice org-backward-paragraph
    (before set-up-shift-select-backward-paragraph activate)
  (interactive "^"))
(defadvice org-forward-paragraph
    (before set-up-shift-select-forward-paragraph activate)
  (interactive "^"))

(add-hook 'org-mode-hook 'org-fragtog-mode)

(add-hook 'org-mode-hook
  (lambda ()
    (texfrag-mode)
  ))

(load-file "~/.emacs.d/spanish-prefix.el")
(setq default-input-method "Spanish-prefix")
(defun activate-default-input-method ()
  (interactive)
  (activate-input-method default-input-method))
(add-hook 'org-mode-hook 'activate-default-input-method)
(add-hook 'text-mode-hook 'activate-default-input-method)
(add-hook 'c-mode-common-hook 'activate-default-input-method)
(add-hook 'emacs-lisp-mode-hook 'activate-default-input-method)
(add-hook 'java-mode-hook 'activate-default-input-method)
(add-hook 'lisp-mode-hook 'activate-default-input-method)
(add-hook 'perl-mode-hook 'activate-default-input-method)
(add-hook 'sh-mode-hook 'activate-default-input-method)
(add-hook 'prog-mode-hook 'activate-default-input-method)
(add-hook 'markdown-mode-hook 'activate-default-input-method)

(add-to-list 'org-latex-packages-alist
             '("" "tikz" t))
(setq org-startup-with-latex-preview t)


(eval-after-load "preview"
  '(add-to-list 'preview-default-preamble "\\PreviewEnvironment{tikzpicture}" t))

(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))
(add-hook 'typescript-mode-hook (lambda () (setq comment-start "/*"
                                        comment-end   "*/")))

(setq-default mode-line-format
              '("%e" mode-line-front-space
                (:propertize
                 ("" mode-line-mule-info mode-line-client mode-line-modified
                  mode-line-remote)
                 display (min-width (5.0)))
                mode-line-frame-identification mode-line-buffer-identification))

;; Notes:
;; Change colors: (C-u C-x =) of selected region
;; Iedit: (C-;)
;; Reload init.el : (M-x load-file ~/.emacs.d/init.el)
;; Auto remove packages : (M-x package-autoremove)
;; See currently defined faces: (M-x list-faces-display)
;; Upcase region: C-x C-u
;; Upcase word: M-u
;; Downcase region: C-x C-l
;; Downcase word: M-l
;; LaTeX preview org-mode: C-c C-x C-l
;; LaTeX preview org-mode: C-c C-p C-p
;; org-insert-structure-template: C-c C-,
;; C-h k -> M-x describe-key
;; C-h f -> M-x describe-function
;; C-h v -> M-x describe-variable
;; C-h a -> M-x apropos-command
;; C-h i -> M-x info

(font-lock-add-keywords
 'c-mode
 '(("\\<\\(\\sw+\\) ?(" 1 font-lock-function-name-face)))

(setq-default c-basic-offset 8)
(setq-default tab-width 4)

;; Typescript mode.
(setq-default typescript-indent-level 8)

(setq company-show-numbers t)
(setq company-tooltip-align-annotations t)
(setq company-tooltip-flip-when-above t)
(global-company-mode)
(company-quickhelp-mode 1)

;; Python setup.
(add-hook 'python-mode-hook 'anaconda-mode)
(add-hook 'python-mode-hook 'anaconda-eldoc-mode)

;; (setq sgml-quick-keys 'close)

;; Add an inline HTML tag:
(defun add-html-tag (tag) (interactive "sHTML Tag: ")
  (let (
        (rstart (if (region-active-p) (region-beginning) (point)))
        (rend   (if (region-active-p) (region-end)       (point))))

    ;; Insert the close tag first, because inserting the open tag
    ;; will mess up the rend position.
    (goto-char rend)
    (insert "</" tag ">")

    ;; Now the open tag:
    (goto-char rstart)
    (insert "<" tag ">")
))

;; Plus one that adds newlines:
(defun add-html-block (tag) (interactive "sHTML Block: ")
  (let (
        (rstart (if (region-active-p) (region-beginning) (point)))
        (rend   (if (region-active-p) (region-end)       (point))))

    ;; Insert the close tag first, because inserting the open tag
    ;; will mess up the rend position.
    (goto-char rend)
    (insert "\n")

    ;; Now the open tag:
    (goto-char rstart)
    (insert "<" tag ">\n")
    ))

(defun url-in-region (start end) (interactive "r")
  (save-excursion
    (goto-char start)
    (re-search-forward "://" end t)
    ))

(defun add-html-link () (interactive)
  (let ((href     "")
        (linktext "")
        (start    (point))
        (end      (point))
        )

    (if (region-active-p)
      (progn
        (setq start (region-beginning))
        (setq end   (region-end))

        (if (url-in-region start end)
          (setq href     (buffer-substring-no-properties start end))
          (setq linktext (buffer-substring-no-properties start end))
          )

        (kill-region start end)
      )
    )

    (insert "<a href=\"" href "\">" linktext "</a>")

    ;; Move the cursor to a useful place. By default it's at the end
    ;; of the inserted text.
    (if (string-empty-p href)
        ;; No href, put the cursor there
        (progn
          (goto-char start)
          (forward-char 9))
        (if (string-empty-p linktext)
          ;; href but no link text, put the cursor there
          ;; Already at end, no need to (goto-char end)
          (backward-char 4))
    )
    ))

(defun html-hook ()
  ;; Define keys for inserting tags in HTML and web modes:
  (local-set-key "\C-cb" (lambda () (interactive) (add-html-tag "b")))
  (local-set-key "\C-ci" (lambda () (interactive) (add-html-tag "i")))
  (local-set-key "\C-c1" (lambda () (interactive) (add-html-tag "h1")))
  (local-set-key "\C-c2" (lambda () (interactive) (add-html-tag "h2")))
  (local-set-key "\C-c3" (lambda () (interactive) (add-html-tag "h3")))
  (local-set-key "\C-c4" (lambda () (interactive) (add-html-tag "h4")))

  (local-set-key "\C-cp" (lambda () (interactive) (add-html-block "pre")))
  (local-set-key "\C-cB" (lambda () (interactive) (add-html-block
                                                   "blockquote")))
  (local-set-key (kbd "C-c C-e") 'add-html-tag)
  (local-set-key "\C-cl" 'add-html-link)

  ;; any other settings for autoindent levels, etc.
)


(add-hook 'sgml-mode-hook 'html-hook)
(add-hook 'web-mode-hook 'html-hook)

(yas-global-mode)
(define-key yas-minor-mode-map [(tab)] nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)

(require 'lsp-mode)
(add-hook 'sgml-mode-hook #'lsp)
(add-hook 'web-mode-hook #'lsp)
(add-hook 'js-mode-hook #'lsp)
(setq-default js-indent-level 8)
(add-hook 'js-mode-hook (lambda () (setq comment-start "/*"
                                         comment-end   "*/")))

;; LaTeX indentation
(setq TeX-indent-open-delimiters "[")
(setq TeX-indent-close-delimiters "]")

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; MAC
(menu-bar-mode t)
(setq
 mac-command-modifier 'super
 mac-option-modifier 'meta
 mac-control-modifier 'control
 mac-function-modifier 'hyper)

;; Java

(require 'lsp-java)
(add-hook 'java-mode-hook #'lsp)

(setenv "JAVA_HOME"  "/Library/Java/JavaVirtualMachines/amazon-corretto-21.jdk/Contents/Home")
(setq lsp-java-java-path
      "/Library/Java/JavaVirtualMachines/amazon-corretto-21.jdk/Contents/Home/bin/java")
(add-hook 'java-mode-hook #'lsp-java-boot-lens-mode)
(require 'lsp-ui)

;; (defun my-java-mode-hook ()
;;  (auto-fill-mode)
;;  (flycheck-mode)
;;  (subword-mode)
;;  (yas-minor-mode)
;;  (when window-system
;;    (set-fringe-style '(8 . 0))))
;; (add-hook 'java-mode-hook 'my-java-mode-hook)

;; (require 'rtags) ;; optional, must have rtags installed
;; (cmake-ide-setup)

(define-key lsp-mode-map (kbd "C-f") 'lsp-find-definition)
(yas-global-mode)

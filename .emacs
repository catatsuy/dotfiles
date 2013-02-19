;; Emacsのキルをクリップボード
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-w" 'clipboard-kill-region)

;; C-hをBSに
(global-set-key "\C-h" 'backward-delete-char)

;; 対応する括弧をハイライト
(show-paren-mode t)

;; スクロール時の移動量を1に
(setq scroll-step 1)

;; 編集時 buffer 再読み込み
(global-auto-revert-mode 1)

;; 同名ファイルのバッファ名の識別文字列を変更する
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;; Menuを隠す
(custom-set-variables
 '(display-time-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces)

;; スクロールバーを消す
(toggle-scroll-bar nil)

;; ;; Font設定（Ubuntu専用）
(set-default-font "DejaVu Sans Mono-10")
(set-face-font 'variable-pitch "DejaVu Sans Mono-10")
(set-fontset-font (frame-parameter nil 'font)
                  'japanese-jisx0208
                  '("Takaoゴシック" . "unicode-bmp")
                  )

;; iswitchbの設定
(iswitchb-mode 1)
;; (iswitchb-default-keybindings)

(add-hook 'iswitchb-define-mode-map-hook
          'iswitchb-my-keys)

(defun iswitchb-my-keys ()
  (define-key iswitchb-mode-map "\C-f" 'iswitchb-next-match)
  (define-key iswitchb-mode-map " " 'iswitchb-next-match)
  (define-key iswitchb-mode-map "\C-b" 'iswitchb-prev-match)
  )

;;; 現在行を目立たせる
(global-hl-line-mode)

;;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)

;;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; 関数名を表示
(which-function-mode 1)

;; google-c-style
(setq auto-mode-alist
      (append '(("\\.h\\(\\..+\\)?$" . c++-mode))
              auto-mode-alist))
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; 次のウィンドウへ移動
(define-key global-map (kbd "C-M-n") 'next-multiframe-window)
;; 前のウィンドウへ移動
(define-key global-map (kbd "C-M-p") 'previous-multiframe-window)

;; ibusの設定
(add-to-list 'load-path "~/.emacs.d/site-lisp/ibus-el")
(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)
(ibus-define-common-key ?\C-\s nil)
;; IBusの状態によってカーソル色を変化させる
(setq ibus-cursor-color '("red" "blue" "limegreen"))
;; C-j で半角英数モードをトグルする
(ibus-define-common-key ?\C-j t)

;; YaTeXのもろもろの設定
(add-to-list 'load-path "~/.emacs.d/site-lisp/yatex")
(setq YaTeX-kanji-code 4)
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq tex-command "platex")
(setq dvi2-command "xdvi %s.dvi")
(setq dviprint-command-format "dvipdfmx %s.dvi")
(setq YaTeX-use-LaTeX2e t)
(setq YaTeX-use-AMS-LaTeX t)

(setq YaTeX-inhibit-prefix-letter nil)

;; Aspellの設定
(setq-default ispell-program-name "aspell")
(eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))

;;; バックアップファイルを作らない
(setq backup-inhibited t)

;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; php
(add-to-list 'load-path "~/.emacs.d/site-lisp/php-mode")
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(setq auto-mode-alist (cons '("\\.ctp$" . html-mode) auto-mode-alist))

;; SCSS
(autoload 'scss-mode "scss-mode")
(setq scss-compile-at-save nil) ;; 自動コンパイルをオフにする
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Perlの設定
(defalias 'perl-mode 'cperl-mode)
(require 'cperl-mode)

(setq cperl-indent-level 4
cperl-close-paren-offset -4
cperl-continued-statement-offset 4
cperl-indent-parens-as-block t
cperl-tab-always-indent t)

;; Markdown
(add-to-list 'load-path "~/.emacs.d/site-lisp/markdown-mode/")
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md$" . markdown-mode) auto-mode-alist))

;; 高速化
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))

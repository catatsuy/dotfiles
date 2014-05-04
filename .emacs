;; コメントアウトの形式変更
(setq comment-style 'multi-line)

;; 改行コードを表示
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; インデントをスペースに
(defun my-c-mode-hook ()
  (c-set-style "linux")
  (setq c-basic-offset tab-width))
(add-hook 'c-mode-hook 'my-c-mode-hook)
(setq-default tab-width 4 indent-tabs-mode nil)

;; 対応する括弧をハイライト
(setq show-paren-delay 0)
(show-paren-mode t)

;; 編集時 buffer 再読み込み
(global-auto-revert-mode 1)

;; save-buffer 時，buffer 末尾に空行が常にあるように
(setq require-final-newline t)

;; Emacs の質問を y/n に
(fset 'yes-or-no-p 'y-or-n-p)

;; 補完時に大文字小文字を区別しない
(setq completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; linum-mode をいじって Emacs を高速化
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))

;; スクロール時の移動量を1に
(setq scroll-step 1)

;; カーソルの位置が何文字目かを表示する
(column-number-mode t)

;; カーソルの位置が何行目かを表示する
(line-number-mode t)

;; 通常のウィンドウで行を折り返さない
(setq-default truncate-lines t)

;; ウィンドウを左右に分割したときに行を折り返さない
(setq-default truncate-partial-width-windows t)

;; whitespace
(require 'whitespace)

(setq whitespace-style '(face tabs tab-mark spaces space-mark lines-tail trailing space-before-tab space-after-tab::space))
(setq whitespace-space-regexp "\\(\x3000+\\)")
(setq whitespace-display-mappings
      '((space-mark ?\x3000 [?\□])
        (tab-mark   ?\t   [?\xBB ?\t])
        ))
(global-whitespace-mode t)

(set-face-attribute 'whitespace-trailing nil
                    :foreground "DeepPink"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :foreground "LightSkyBlue"
                    :underline t)
(set-face-attribute 'whitespace-space nil
                    :foreground "GreenYellow"
                    :weight 'bold)

;; vc-mode 無効
;; git とかいじらないし遅い
;; vcを起動しないようにする
(custom-set-variables '(vc-handled-backends nil))

;; 不要なhookを外す
(remove-hook 'find-file-hook 'vc-find-file-hook)
(remove-hook 'kill-buffer-hook 'vc-kill-buffer-hook)

;; uniquify
(require 'uniquify)

(setq uniquify-buffer-name-style 'post-forward)

;; iswitchb-mode
(iswitchb-mode 1)
;; (iswitchb-default-keybindings)

(add-hook 'iswitchb-define-mode-map-hook
          'iswitchb-my-keys)

(defun iswitchb-my-keys ()
  (define-key iswitchb-mode-map "\C-f" 'iswitchb-next-match)
  (define-key iswitchb-mode-map " " 'iswitchb-next-match)
  (define-key iswitchb-mode-map "\C-b" 'iswitchb-prev-match)
  )

;; カーソルの場所を保存する
(require 'saveplace)
(setq-default save-place t)

;; C-hをBSに
(global-set-key (kbd "C-h") 'backward-delete-char)

;; 行番号を指定して移動する機能をM-zに割り当て
(global-set-key (kbd "M-z") 'goto-line)

;; ESC 連打で無効化
(global-set-key (kbd "M-ESC ESC") 'keyboard-quit)

;; to LARGE C-x C-u と to small C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; C-x C-b をつぶす
(global-set-key (kbd "C-x C-b") 'buffer-menu)

(bind-key* "M-h" 'backward-kill-word) ; 一文字前の単語を削除
(bind-key "C-h" 'backward-delete-char)
;; (bind-key* "C-q" 'iconify-or-deiconify-frame) ;最小化

(bind-key* "C-q" 'scroll-down) ;; スクロールダウン
(bind-key* "C-j" 'backward-char)
(bind-key* "M-j" 'backward-word)
(bind-key* "C-l" 'forward-char)
(bind-key* "M-l" 'forward-word)

(bind-key* "C-o" 'recenter-top-bottom)
(bind-key* "M-:" 'comment-dwim)

(bind-key* (kbd "M-n") (kbd  "C-u 5 C-n")); M-n で 5行移動
(bind-key* (kbd "M-p") (kbd "C-u 5 C-p")); M-pで 5行移動

;;  ウィンドウ内のカーソル移動
(bind-key* "C-M-p" (lambda () (interactive) (move-to-window-line 0))) ;一番上
(bind-key* "C-M-j" (lambda () (interactive) (move-to-window-line nil))) ;真ん中
(bind-key* "C-M-n" (lambda () (interactive) (move-to-window-line -1))) ;一番下

;; 行番号を指定して移動
(bind-key* "M-g" 'goto-line)

;; 最近使ったファイルの表示
(recentf-mode t)
(bind-key* "C-x f" 'recentf-open-files)
(require 'recentf)
(setq recentf-save-file "~/.recentf")
(setq recentf-max-saved-items 1000)            ;; recentf に保存するファイルの数
(setq recentf-exclude '(".recentf"))           ;; .recentf自体は含まない
(setq recentf-auto-cleanup 10)                 ;; 保存する内容を整理
(run-with-idle-timer 60 t 'recentf-save-list)  ;; 30秒ごとに .recentf を保存

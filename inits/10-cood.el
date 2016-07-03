;; 辞書を引いて文字列の自動補完
(el-get-bundle auto-complete)
(use-package auto-complete
  :config
  ;; auto-completeが辞書として使うファイルが保存されているパスの登録
  ;; もし自分で辞書を作成したらadd-to-listでそのファイルがおいてあるパスを示す。
  ;; ファイルの例は~/.emacs.d/elisp/auto-complete/dictを参考にする
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/auto-complete/dict")
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/dict"))

;; ヘッダーの自動補完
(el-get-bundle auto-complete-c-headers)
(use-package auto-complete-c-headers
  :init
  (add-hook 'c++-mode-hook (lambda () 
            '(setq ac-sources (append ac-sources '(ac-source-c-headers)))))
  (add-hook 'c-mode-hook (lambda () 
			   '(setq ac-sources (append ac-sources '(ac-source-c-headers))))))
;; インクルード先の追加部分は時間があるときに後で書く;; ヘッダーの自動補完
(el-get-bundle auto-complete-c-headers)
(use-package auto-complete-c-headers
  :init
  (add-hook 'c++-mode-hook (lambda () 
            '(setq ac-sources (append ac-sources '(ac-source-c-headers)))))
  (add-hook 'c-mode-hook (lambda () 
			   '(setq ac-sources (append ac-sources '(ac-source-c-headers))))))
;; インクルード先の追加部分は時間があるときに後で書く

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; タブや半角スペースを表示する設定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;; ;; 辞書を引いて関数の自動補完
(el-get-bundle yasnippet)
(use-package yasnippet
  :ensure t
  :diminish yas-minor-mode
  :bind (:map yas-minor-mode-map
             ("C-x i i" . yas-insert-snippet)
             ("C-x i n" . yas-new-snippet)
             ("C-x i v" . yas-visit-snippet-file)
             ("C-x i l" . yas-describe-tables)
             ("C-x i g" . yas-reload-all)
             )
  :config
  (setq yas-snippet-dirs
	'("~/.emacs.d/snippets" ;; 作成するスニペットの保存先
	  yas-installed-snippets-dir ;; package に最初から含まれるスニペット
	  ))
  (yas-global-mode 1)
  (setq yas-prompt-functions '(yas-ido-prompt))
)
  

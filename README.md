# programming-elixir-exercises

プログラミングElixirの練習

## 開発環境

Emacsの環境は下記を参考にしました。

http://dev.classmethod.jp/server-side/install-elixir-to-mac/

### el-get

```
(el-get-bundle elixir-mode)
(el-get-bundle alchemist)
(el-get-bundle syohex/emacs-ac-alchemist)
```

でインストールして、auto-completeを利用できるように下記を設定

```
(require 'elixir-mode)
(require 'alchemist)
(add-hook 'elixir-mode-hook 'ac-alchemist-setup)

```

## Alchemist

http://alchemist.readthedocs.io/en/latest/

### REPL(Read-eval-print loop)の起動

`C-c a i i`

### 現在行の評価

`C-c a i l`

### マークしているリージョンの評価

`C-c a i b`

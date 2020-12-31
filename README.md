# dotfiles
## インストール
### dotfiles をダウンロード
```sh
bash -c "$(curl -fsSL https://raw.githubusercontent.com/soura-mas/dotfiles/master/install.sh)"
```

### dotfiles を配置
```sh
make deploy
```

### homebrew のインストール
```sh
make brew-init
``` 

### VSCode のセットアップ
```sh
make vscode-init
```


## gittemplate 
### 既に読み込まれているフックスクリプトを編集した場合は、対象ファイルを削除したうえで、git init を行う 
```sh
$ rm path/to/repo/.git/hooks/pre-commit
$ git init
Reinitialized existing Git repository in /path/to/repo/.git/
```


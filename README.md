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


## アップデート
### Brewfile
```sh
brew bundle dump
```

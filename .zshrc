export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

source ~/.zplug/init.zsh

#autoload -Uz compinit && compinit

# 補完候補を一覧表示にする
setopt auto_list
# TAB で順に補完候補を切り替える
setopt auto_menu
# 補完候補を一覧表示したとき、Tabや矢印で選択できるようにする
zstyle ':completion:*:default' menu select=1

# 補完候補の色づけ
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

setopt auto_cd
setopt share_history

# ダブルクォーテーションで囲うと良い
zplug "zsh-users/zsh-history-substring-search"

# 補完を更に強化する
# pacman や yaourt のパッケージリストも補完するようになる
zplug "zsh-users/zsh-completions"

# git の補完を効かせる
# 補完＆エイリアスが追加される
zplug "plugins/git",   from:oh-my-zsh
zplug "peterhurford/git-aliases.zsh"
# 入力途中に候補をうっすら表示
zplug "zsh-users/zsh-autosuggestions"

# コマンドを種類ごとに色付け
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# ヒストリの補完を強化する
zplug "zsh-users/zsh-history-substring-search", defer:3

# コマンドも管理する
# グロブを受け付ける（ブレースやワイルドカードなど）
zplug "Jxck/dotfiles", as:command, use:"bin/{histuniq,color}"

# こんな使い方もある（他人の zshrc）
zplug "tcnksm/docker-alias", use:zshrc

# frozen タグが設定されているとアップデートされない
zplug "k4rthik/git-cal", as:command, frozen:1

# GitHub Releases からインストールする
# また、コマンドは rename-to でリネームできる
zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

# oh-my-zsh をサービスと見なして、
# そこからインストールする
zplug "plugins/git",   from:oh-my-zsh

# if タグが true のときのみインストールされる
zplug "lib/clipboard", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"

# prezto のプラグインやテーマを使用する
#zplug "modules/osx", from:prezto, if:"[[ $OSTYPE == *darwin* ]]"
#zplug "modules/prompt", from:prezto
# zstyle は zplug load の前に設定する
#zstyle ':prezto:module:prompt' theme 'sorin'

# インストール・アップデート後に実行されるフック
# この場合は以下のような設定が別途必要
# ZPLUG_SUDO_PASSWORD="********"
zplug "jhawthorn/fzy", \
    as:command, \
    rename-to:fzy, \
    hook-build:"make && sudo make install"

# リビジョンロック機能を持つ
zplug "b4b4r07/enhancd", at:v1
zplug "mollifier/anyframe", at:4c23cb60

# Gist ファイルもインストールできる
zplug "b4b4r07/79ee61f7c140c63d2786", \
    from:gist, \
    as:command, \
    use:get_last_pane_path.sh

# bitbucket も
zplug "b4b4r07/hello_bitbucket", \
    from:bitbucket, \
    as:command, \
    use:"*.sh"

# `use` タグでキャプチャした文字列でリネームする
zplug "b4b4r07/httpstat", \
    as:command, \
    use:'(*).sh', \
    rename-to:'$1'

# 依存管理
# "emoji-cli" は "jq" があるときにのみ読み込まれる
zplug "stedolan/jq", \
    from:gh-r, \
    as:command, \
    rename-to:jq
zplug "b4b4r07/emoji-cli", \
    on:"stedolan/jq"
# ノート: 読み込み順序を遅らせるなら defer タグを使いましょう

# 読み込み順序を設定する
# 例: "zsh-syntax-highlighting" は compinit の後に読み込まれる必要がある
# （2 以上は compinit 後に読み込まれるようになる）
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# ローカルプラグインも読み込める
zplug "~/.zsh", from:local

# テーマファイルを読み込む
zplug 'dracula/zsh', as:theme

# 未インストール項目をインストールする
if ! zplug check; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
zplug load # --verbose

ZSH_THEME="dracula"

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(direnv hook zsh)"

export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"



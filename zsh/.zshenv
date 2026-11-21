# 非交互 shell 也会加载这里，只放环境变量，不要放产生输出的命令
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# 隐私环境变量（不提交到 git）
[[ -f "$ZDOTDIR/env.local.zsh" ]] && source "$ZDOTDIR/env.local.zsh"

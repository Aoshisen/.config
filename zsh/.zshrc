# ============================================
# ~/.config/zsh/.zshrc
# 由 ~/.zshenv 中的 ZDOTDIR 指向本文件，家目录不再需要 .zshrc
# ============================================

# Powerlevel10k instant prompt 必须放在最前面
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# 公开的环境变量（含 ZSH、NVM_DIR、PATH 等）
source "$ZDOTDIR/env.zsh"

# 隐私环境变量（已 gitignore；没有该文件也不会报错）
[[ -f "$ZDOTDIR/env.local.zsh" ]] && source "$ZDOTDIR/env.local.zsh"

source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/nvm.zsh"
source "$ZDOTDIR/plugins.zsh"
source "$ZDOTDIR/theme.zsh"
source "$ZDOTDIR/vi.zsh"

source "$ZSH/oh-my-zsh.sh"

# 把当前目录传给 yazi，退出后自动 cd 到 yazi 的位置
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  command yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

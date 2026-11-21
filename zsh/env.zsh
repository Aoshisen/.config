# ============================================
# 公开的环境变量（可以提交到 git）
# 隐私/密钥类变量请放到 env.local.zsh（已被 gitignore）
# ============================================

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# 默认编辑器
export EDITOR="nvim"

# 语言环境（保证 wrapped lazygit 为中文）
export LANG="zh_CN.UTF-8"

# Rust 镜像
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup

# Homebrew 镜像
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"
export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"

# nvm（nvm.zsh 依赖这个变量，必须先于 nvm.zsh 加载）
export NVM_DIR="$HOME/.nvm"

# PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# zoxide
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

#!/bin/bash
# Yazi 插件 & 风格包安装脚本

set -e

color_green()  { echo -e "\033[0;32m$1\033[0m"; }
color_yellow() { echo -e "\033[1;33m$1\033[0m"; }

echo "> 开始安装 Yazi 插件..."

# --- 风格包 ---
color_yellow "安装风格包..."
ya pkg add matt-dong-123/gruvbox-material
color_green "  gruvbox-material 完成"

# --- 插件 ---
color_yellow "安装插件..."
ya pkg add yazi-rs/plugins:smart-enter
color_green "  smart-enter 完成"

ya pkg add yazi-rs/plugins:smart-paste
color_green "  smart-paste 完成"

ya pkg add yazi-rs/plugins:git
color_green "  git 完成"

echo
color_green "全部安装完成"

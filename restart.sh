#!/bin/bash

echo "正在查找并杀死3000端口的程序..."

# 查找3000端口的进程并杀死
lsof -ti:3000 | xargs kill -9 2>/dev/null

if [ $? -eq 0 ]; then
    echo "成功杀死3000端口的程序"
else
    echo "没有找到3000端口的程序或已经停止"
fi

echo "正在安装依赖..."
pnpm install

if [ $? -eq 0 ]; then
    echo "依赖安装成功"
else
    echo "依赖安装失败"
    exit 1
fi

echo "正在构建项目..."
pnpm build

if [ $? -eq 0 ]; then
    echo "项目构建成功"
else
    echo "项目构建失败"
    exit 1
fi

echo "正在启动服务器..."
clear
node server.js
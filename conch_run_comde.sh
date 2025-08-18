#!/bin/bash

# 如果任何命令失败，立即退出脚本
set -e

# 检查是否提供了 Flutter SDK 路径作为参数
if [ -z "$1" ]; then
  echo "错误：请提供 Flutter SDK 的路径作为第一个参数。"
  echo "用法: ./build.sh /path/to/your/flutter/sdk"
  exit 1
fi

FLUTTER_SDK_PATH=$1

# -------------------------------------------------
# 使用子 Shell (Subshell) 在 Flutter SDK 目录中操作
# 这样就不需要手动 cd 回来了
(
  echo "--- 进入 Flutter SDK 目录进行版本切换 ---"
  cd "$FLUTTER_SDK_PATH"
  
  echo "--- 切换 Git 分支到 flutter3.16.9_conch1.6.6 ---"
  git checkout flutter3.16.9_conch1.6.6
  
  echo "--- Flutter 版本信息 ---"
  flutter --version
)
# 子 Shell 结束，自动返回到脚本启动时的目录
# -------------------------------------------------

# 清理并获取依赖
echo "--- 执行 flutter clean 和 pub get ---"
flutter clean
flutter pub get

flutter config --jdk-dir=/Users/enheng/Library/Java/JavaVirtualMachines/ms-11.0.28/Contents/Home

# 运行应用
echo "--- 在 emulator-5554 上以 Release 模式启动应用 ---"
flutter run --release -d emulator-5554

echo "--- 脚本执行完毕 ---"

# classpath 'com.android.tools.build:gradle:7.2.2'
#distributionUrl=https\://services.gradle.org/distributions/gradle-7.3.3-bin.zip


#flutter config --jdk-dir=/Users/enheng/Library/Java/JavaVirtualMachines/ms-11.0.28/Contents/Home
#flutter config --jdk-dir=/Users/enheng/Library/Java/JavaVirtualMachines/ms-17.0.16/Contents/Home

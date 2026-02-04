#!/bin/bash
# 截图并发送到飞书
# 使用方式: 直接运行脚本即可完成截图+发送

timestamp=$(date +%Y%m%d_%H%M%S)
screenshot_path="/Users/apple/Desktop/screenshot_${timestamp}.png"

# 步骤 1: 在 Mac mini 上截图
screencapture "$screenshot_path"

# 步骤 2: 发送到飞书
openclaw message send --channel feishu --target "ou_715534dc247ce18213aee31bc8b224cf" --media "$screenshot_path" --message "📸 截图"

echo "截图已发送，已经告知用户。"

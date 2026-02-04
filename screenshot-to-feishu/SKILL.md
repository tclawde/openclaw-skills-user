# screenshot-to-feishu

截图桌面并发送到飞书。

## 使用方法

直接在 `Apple的Mac mini` 节点上运行脚本：

```
nodes.run(node="Apple的Mac mini", command=["bash", "-l", "/Users/apple/.openclaw/skills/screenshot-to-feishu/scripts/screenshot-to-feishu.sh"])
```

脚本会自动：
1. 截图并保存到桌面（带时间戳）
2. 调用 `openclaw message send --media` 发送到飞书

## 输出

- 截图文件: `~/Desktop/screenshot_YYYYMMDD_HHMMSS.png`
- 飞书消息: 发送给用户，告知用户截图完成。

## 注意事项

- 截图保存在 Mac mini 桌面
- 文件名带时间戳，不会覆盖之前的截图
- 飞书会自动配置为当前对话
- 脚本会自动给用户发送截图完成消息，不用重复发送。

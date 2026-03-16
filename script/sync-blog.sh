cd ..

TIME=$(date +"%Y-%m-%d %H:%M:%S")
echo "[$TIME] 开始与云端同步..."

git pull --rebase origin main

if[ $? -ne 0 ]; then
    echo "[$TIME] ❌ 拉取云端代码失败（可能存在冲突），停止同步，请手动处理。"
    exit 1
fi

git push origin main

if [ $? -eq 0 ]; then
    echo "[$TIME] ✅ 成功拉取并推送到云端。"
else
    echo "[$TIME] ❌ 推送失败，请检查网络或 SSH 权限。"
fi

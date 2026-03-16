cd ..

if [ -n "$(git status --porcelain)" ]; then
    TIME=$(date +"%Y-%m-%d %H:%M:%S")
    COMMIT_MSG="blog auto-commit: $TIME"

    git add -A
    git commit -m "$COMMIT_MSG"

    echo "[$TIME] 成功生成本地提交。"
else
    TIME=$(date +"%Y-%m-%d %H:%M:%S")
    echo "[$TIME] 没有检测到文件变动，跳过提交。"
fi

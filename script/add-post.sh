title="$1"
date=$(date +"%Y-%m-%d")
filename=$(echo "$title" | tr ' ' '-' | tr '[:upper:]' '[:lower:]')

folder="../content/posts"
file="$folder/$filename.md"

cat <<EOF > "$file"
+++
title = "$title"
date = "$date"
authors = ["Dailin"]
description = "this is description for example post"

[taxonomies]
tags=["example"]

[extra]
comment = true
repo_view = true
hidden = false
+++

EOF

obsidian open file="$file"

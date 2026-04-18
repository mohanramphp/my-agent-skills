#!/bin/bash

# Filter only relevant files and remove noise

git diff --name-only origin/develop...HEAD | while read file; do
  case "$file" in
    *.ts|*.js|*.html|*.css|*.scss)
      echo "===== FILE: $file ====="
      git diff origin/develop...HEAD -- "$file" \
        | grep -E "^\+|^\-" \
        | grep -vE "^\+\+\+|^\-\-\-" \
        | grep -vE "^\+import|^\-import"
      echo ""
      ;;
  esac
done
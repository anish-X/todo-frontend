#!/bin/bash
# Script to delete master branch after changing default on GitHub

echo "⚠️  IMPORTANT: First change the default branch on GitHub!"
echo "Go to: https://github.com/anish-X/todo-frontend/settings/branches"
echo "Change default from 'master' to 'main', then press Enter..."
read

echo "Deleting master branch..."
git fetch origin
git push origin --delete master 2>&1

if [ $? -eq 0 ]; then
  echo "✅ Master branch deleted successfully!"
  git remote prune origin
  echo "Current branches:"
  git branch -a
else
  echo "❌ Failed to delete. Make sure you changed the default branch on GitHub first."
fi

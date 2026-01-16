# How to Delete Master Branch on GitHub

Since `master` is the default branch, you need to change the default to `main` first, then delete `master`.

## Method 1: Using GitHub Web Interface (Easiest)

1. Go to: https://github.com/anish-X/todo-frontend/settings/branches
2. Under "Default branch", click the switch/edit icon next to `master`
3. Select `main` from the dropdown
4. Click "Update" and confirm
5. Then run this command:

```bash
cd /home/anish/Project-1/frontend
git push origin --delete master
```

## Method 2: Using GitHub CLI (if installed)

```bash
# Change default branch
gh api repos/anish-X/todo-frontend -X PATCH -f default_branch=main

# Delete master branch
git push origin --delete master
```

## Method 3: Quick Script

After changing default branch on GitHub web interface, run:

```bash
cd /home/anish/Project-1/frontend
git fetch origin
git push origin --delete master
git remote prune origin
```

## Verify

After deletion, verify:
```bash
git branch -a
```

You should only see `main` branches.

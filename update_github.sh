#!/bin/bash
# Script to update project to GitHub
# Usage: ./update_github.sh "Your commit message"

COMMIT_MESSAGE=${1:-"Update portfolio website with new features"}

echo "=== Updating Project to GitHub ==="

# Check if git is initialized
if [ ! -d .git ]; then
    echo "Git repository not found. Initializing..."
    git init
fi

# Add .gitignore if not already tracked
if ! git ls-files --error-unmatch .gitignore >/dev/null 2>&1; then
    echo "Adding .gitignore..."
    git add .gitignore
    git commit -m "Add .gitignore"
fi

# Stage all changes
echo ""
echo "Staging all changes..."
git add .

# Show status
echo ""
echo "Current status:"
git status --short

# Commit changes
echo ""
echo "Committing changes..."
git commit -m "$COMMIT_MESSAGE"

if [ $? -eq 0 ]; then
    echo ""
    echo "Pushing to GitHub..."
    
    # Get current branch
    BRANCH=$(git branch --show-current)
    if [ -z "$BRANCH" ]; then
        BRANCH="main"
    fi
    
    # Push to origin
    git push origin "$BRANCH"
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "=== Successfully updated to GitHub! ==="
        echo "Branch: $BRANCH"
    else
        echo ""
        echo "=== Push failed ==="
        echo "You may need to set upstream branch:"
        echo "git push -u origin $BRANCH"
    fi
else
    echo ""
    echo "=== Commit failed ==="
    echo "No changes to commit or commit message required."
fi

echo ""
echo "Done!"


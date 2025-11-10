# Script to update project to GitHub
# Usage: .\update_github.ps1 "Your commit message"

param(
    [string]$commitMessage = "Update portfolio website with new features"
)

Write-Host "=== Updating Project to GitHub ===" -ForegroundColor Cyan

# Check if git is initialized
if (-not (Test-Path .git)) {
    Write-Host "Git repository not found. Initializing..." -ForegroundColor Yellow
    git init
}

# Add .gitignore if not already added
if (-not (git ls-files --error-unmatch .gitignore 2>$null)) {
    Write-Host "Adding .gitignore..." -ForegroundColor Yellow
    git add .gitignore
    git commit -m "Add .gitignore"
}

# Stage all changes
Write-Host "`nStaging all changes..." -ForegroundColor Yellow
git add .

# Show status
Write-Host "`nCurrent status:" -ForegroundColor Yellow
git status --short

# Commit changes
Write-Host "`nCommitting changes..." -ForegroundColor Yellow
git commit -m $commitMessage

if ($LASTEXITCODE -eq 0) {
    Write-Host "`nPushing to GitHub..." -ForegroundColor Yellow
    
    # Get current branch
    $branch = git branch --show-current
    if (-not $branch) {
        $branch = "main"
    }
    
    # Push to origin
    git push origin $branch
    
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`n=== Successfully updated to GitHub! ===" -ForegroundColor Green
        Write-Host "Branch: $branch" -ForegroundColor Green
    } else {
        Write-Host "`n=== Push failed ===" -ForegroundColor Red
        Write-Host "You may need to set upstream branch:" -ForegroundColor Yellow
        Write-Host "git push -u origin $branch" -ForegroundColor Yellow
    }
} else {
    Write-Host "`n=== Commit failed ===" -ForegroundColor Red
    Write-Host "No changes to commit or commit message required." -ForegroundColor Yellow
}

Write-Host "`nDone!" -ForegroundColor Cyan


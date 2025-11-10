@echo off
REM Quick script to update project to GitHub
REM Usage: git-update.bat "Your commit message"

set COMMIT_MSG=%1
if "%COMMIT_MSG%"=="" set COMMIT_MSG=Update portfolio website

echo === Updating Project to GitHub ===
echo.

echo Staging all changes...
git add .

echo.
echo Committing changes...
git commit -m "%COMMIT_MSG%"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo Pushing to GitHub...
    git push origin main
    
    if %ERRORLEVEL% EQU 0 (
        echo.
        echo === Successfully updated to GitHub! ===
    ) else (
        echo.
        echo === Push failed ===
        echo You may need to set upstream: git push -u origin main
    )
) else (
    echo.
    echo === Commit failed ===
    echo No changes to commit or commit message required.
)

echo.
echo Done!
pause


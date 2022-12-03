
@echo off

cls
git "status"
echo "**************************************************"
echo "Performing an add for all files in this directory"
git "add" "."
git "status"
echo "**************************************************"
set /p CommitMessage=Enter a commit message, then press [return]
echo %CommitMessage%
git "commit" "-m" "%CommitMessage%"
git "status"
echo "**************************************************"
echo "Pushing to GITHUB repository"
git "push" "-u" "origin" "master"
echo "**************************************************"
echo "Done!"
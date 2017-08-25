@echo off

:: variables
set backupdirpath\git_backup\
set newfolder=%date:~6,4%%date:~0,2%%date:~3,2%
set backupcmd=git clone http://localhost:8888/some-repo.git
set gitpull=git pull --all

echo LOG: Changing curr dir to "git_backup" dir...
cd /D %backupdirpath%
echo LOG: Creating new daily backup folder...
mkdir %newfolder%
echo LOG: Changing directory to new backup folder...
cd %newfolder%
echo.
echo ############################# BACKUP STARTED #############################
echo LOG: Cloning repository from remote...
%backupcmd%
echo LOG: Git pull to download all remote branches, not just master...
%gitpull%
echo LOG: Done
echo ############################# BACKUP COMPLETED #############################
echo.
@pause

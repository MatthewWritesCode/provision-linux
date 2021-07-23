for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set mydir="%mydate%_%mytime%"

net stop SpaceEngineers1 >> ./logs/update_%mydir%.log

C:\steamcmd\steamcmd +login anonymous +force_install_dir C:\Servers\SpaceEngineers +app_update 298740 +quit >> ./logs/update_%mydir%.log

REM if exist Backup.bat (
	REM echo "Backing up server" >> ./logs/update_%mydir%.log
    REM call Backup.bat >> ./logs/update_%mydir%.log
REM ) else (
    REM echo "Backup script not found" >> ./logs/update_%mydir%.log
REM )

net start SpaceEngineers1 >> ./logs/update_%mydir%.log
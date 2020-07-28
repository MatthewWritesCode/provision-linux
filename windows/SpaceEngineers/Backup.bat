for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
for /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)

set mydir="GSGentsSurvival_%mydate%_%mytime%" >> ./logs/backup_%mydir%.log

xcopy C:\Users\Matchu\AppData\Roaming\SpaceEngineersDedicated\Saves .\Backups\backup_%mydir% /E /C /Y /I >> ./logs/backup_%mydir%.log
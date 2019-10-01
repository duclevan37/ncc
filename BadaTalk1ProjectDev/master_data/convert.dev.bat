@echo off

if not exist cs mkdir cs
if not exist go mkdir go
if not exist js mkdir js
if not exist sql mkdir sql

del /q cs\*.cs
del /q go\*.go
del /q js\*.js
del /q js\*.json
del /q sql\*.db
del /q sql\*.db-journal
del /q sql\*.sql

cd converter
node app.js dev
echo.
pause

cd ..
if not exist cs\MasterData.cs (
	echo.
	echo Please Check the Error Message
	echo.

	pause
	exit /b
)

if exist copy.server.bat (
	call copy.server.bat
)

if exist copy.client.bat (
	call copy.client.bat
)
pause
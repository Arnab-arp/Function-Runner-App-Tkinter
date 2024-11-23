@echo off

echo " .----------------.  .----------------.  .----------------.  .----------------.  .----------------. "
echo "| .--------------. || .--------------. || .--------------. || .--------------. || .--------------. |"
echo "| |  ________    | || |  _________   | || | ____   ____  | || |              | || |  _______     | |"
echo "| | |_   ___ `.  | || | |_   ___  |  | || ||_  _| |_  _| | || |              | || | |_   __ \    | |"
echo "| |   | |   `. \ | || |   | |_  \_|  | || |  \ \   / /   | || |    ______    | || |   | |__) |   | |"
echo "| |   | |    | | | || |   |  _|  _   | || |   \ \ / /    | || |   |______|   | || |   |  __ /    | |"
echo "| |  _| |___.' / | || |  _| |___/ |  | || |    \ ' /     | || |              | || |  _| |  \ \_  | |"
echo "| | |________.'  | || | |_________|  | || |     \_/      | || |              | || | |____| |___| | |"
echo "| |              | || |              | || |              | || |              | || |              | |"
echo "| '--------------' || '--------------' || '--------------' || '--------------' || '--------------' |"
echo "'----------------'  '----------------'  '----------------'  '----------------'  '----------------'  "

echo For More Info, Visit:
echo Github: https://github.com/Arnab-arp

pause

where python >nul 2>&1
if %errorlevel% == 0 (
	
	echo Python:   FOUND
    	echo Running:  INSTALLER
	echo Installing Tk-Tools	
	
    	pip install tk-tools

	echo --------------------------------------------------------------------------------------------	
	echo Tk-Tools Installed Successfully!

) else (
	echo Python is not installed.
	echo Go to > https://www.python.org/downloads/ < website to download Python 
	echo Please install Python before running this program again. 
)
pause

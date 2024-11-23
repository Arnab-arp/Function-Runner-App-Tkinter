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
    	echo Running:  UNINSTALLER
	echo Uninstalling Tk Tools	
	
    	pip uninstall -y tk-tools
	echo --------------------------------------------------------------------------------------------
	echo Tk-Tools Uninstalled Successfully!
	echo Safe To Delete The APP folder

) else (
	echo Python:   NOT FOUND
	echo ERROR MESSAGE:
	echo Please install "Python" before running this program again. 
)
pause

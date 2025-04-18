@echo off
echo Updating the Time Series ML Project environment...

REM Change to project root directory
cd /d %~dp0..
echo Current directory: %CD%

REM Update the Conda environment
echo Updating Conda environment...
conda env update --name timeseries-env --file environment.yml --prune

echo Update completed successfully!
pause
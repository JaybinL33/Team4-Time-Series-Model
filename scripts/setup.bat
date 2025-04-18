@echo off
echo Setting up the Time Series ML Project environment...

REM Change to project root directory
cd /d %~dp0..
echo Current directory: %CD%

REM Create the Conda environment
echo Creating Conda environment...
conda env create --name timeseries-env --file environment.yml

REM Register the kernel
echo Registering Jupyter kernel...
conda run -n timeseries-env python -m ipykernel install --user --name "timeseries-env" --display-name "Python (timeseries-env)"

echo Setup completed successfully!
pause
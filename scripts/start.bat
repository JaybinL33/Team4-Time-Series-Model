@echo off
echo Starting Jupyter Lab...

REM Change to project root directory
cd /d %~dp0..
echo Current directory: %CD%

REM Launch Jupyter Lab
conda run -n timeseries-env jupyter lab

REM Note: This window will stay open while Jupyter Lab is running
REM To stop Jupyter Lab, press Ctrl+C in this window
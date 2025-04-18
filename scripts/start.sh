#!/bin/bash
echo "Starting Jupyter Lab..."

# Change to project root directory
cd "$(dirname "$0")/.."
echo "Current directory: $(pwd)"

# Launch Jupyter Lab
conda run -n timeseries-env jupyter lab

# Note: This script will stay running while Jupyter Lab is running
# To stop Jupyter Lab, press Ctrl+C in this terminal
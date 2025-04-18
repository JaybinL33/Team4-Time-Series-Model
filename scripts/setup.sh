#!/bin/bash
echo "Setting up the Time Series ML Project environment..."

# Change to project root directory
cd "$(dirname "$0")/.."
echo "Current directory: $(pwd)"

# Create the Conda environment
echo "Creating Conda environment..."
conda env create --name timeseries-env --file environment.yml

# Register the kernel
echo "Registering Jupyter kernel..."
conda run -n timeseries-env python -m ipykernel install --user --name "timeseries-env" --display-name "Python (timeseries-env)"

echo "Setup completed successfully!"
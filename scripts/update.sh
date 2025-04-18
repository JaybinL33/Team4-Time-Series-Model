#!/bin/bash
echo "Updating the Time Series ML Project environment..."

# Change to project root directory
cd "$(dirname "$0")/.."
echo "Current directory: $(pwd)"

# Update the Conda environment
echo "Updating Conda environment..."
conda env update --name timeseries-env --file environment.yml --prune

echo "Update completed successfully!"
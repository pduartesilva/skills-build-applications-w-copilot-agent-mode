#!/bin/bash

# OctoFit Tracker - Virtual Environment Setup Script
# This script sets up a Python virtual environment for the OctoFit Tracker project

set -e

echo "=========================================="
echo "OctoFit Tracker - Virtual Environment Setup"
echo "=========================================="
echo ""

# Check Python 3 installation
echo "📋 Checking Python 3 installation..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

PYTHON_VERSION=$(python3 --version)
echo "✅ Found: $PYTHON_VERSION"
echo ""

# Create virtual environment
VENV_DIR="venv"
echo "🔧 Creating virtual environment in '$VENV_DIR' directory..."
python3 -m venv $VENV_DIR
echo "✅ Virtual environment created successfully"
echo ""

# Activate virtual environment
echo "🚀 Activating virtual environment..."
source $VENV_DIR/bin/activate
echo "✅ Virtual environment activated"
echo ""

# Upgrade pip
echo "📦 Upgrading pip..."
pip install --upgrade pip
echo "✅ pip upgraded"
echo ""

# Check virtual environment
echo "✓ Virtual environment setup complete!"
echo ""
echo "To activate the virtual environment in the future, run:"
echo "  source $VENV_DIR/bin/activate"
echo ""
echo "To deactivate the virtual environment, run:"
echo "  deactivate"
echo ""
echo "Next step: Run './install_requirements.sh' to install project dependencies"
echo "=========================================="

#!/bin/bash

# OctoFit Tracker - Requirements Installation Script
# This script installs all Python dependencies for the OctoFit Tracker project

set -e

echo "=========================================="
echo "OctoFit Tracker - Requirements Installation"
echo "=========================================="
echo ""

# Check if virtual environment is activated
if [ -z "$VIRTUAL_ENV" ]; then
    echo "❌ Virtual environment is not activated!"
    echo ""
    echo "Please activate it first:"
    echo "  source venv/bin/activate"
    echo ""
    exit 1
fi

echo "✅ Virtual environment is active: $VIRTUAL_ENV"
echo ""

# Install root requirements
echo "📦 Installing root requirements from requirements.txt..."
pip install -r requirements.txt
echo "✅ Root requirements installed"
echo ""

# Install backend requirements
echo "📦 Installing backend requirements from octofit-tracker/backend/requirements.txt..."
pip install -r octofit-tracker/backend/requirements.txt
echo "✅ Backend requirements installed"
echo ""

# List installed packages
echo "📋 Installed packages:"
echo "=========================================="
pip list
echo "=========================================="
echo ""

echo "✓ All requirements installed successfully!"
echo ""
echo "Next steps:"
echo "1. Navigate to backend: cd octofit-tracker/backend"
echo "2. Run migrations: python manage.py migrate"
echo "3. Create superuser: python manage.py createsuperuser"
echo "4. Start server: python manage.py runserver"
echo ""
echo "For more information, see SETUP_INSTRUCTIONS.md"
echo "=========================================="

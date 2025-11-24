#!/bin/bash

# Complete setup script with virtual environment
# Run this once on a new machine: ./setup_with_venv.sh

set -e  # Exit on any error

echo "=================================="
echo "Safety Report IB Setup (with venv)"
echo "=================================="
echo ""

# Check if Python 3 is available
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 not found. Please install Python 3.8 or higher."
    exit 1
fi

echo "✓ Python 3 found: $(python3 --version)"
echo ""

# Create virtual environment
if [ -d "venv" ]; then
    echo "⚠️  Virtual environment already exists (venv/)"
    read -p "Remove and recreate? (y/N): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "Removing old venv..."
        rm -rf venv
    else
        echo "Keeping existing venv..."
    fi
fi

if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
    echo "✓ Virtual environment created"
fi
echo ""

# Activate virtual environment
echo "Activating virtual environment..."
source venv/bin/activate
echo "✓ Virtual environment activated"
echo ""

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip --quiet
echo "✓ pip upgraded"
echo ""

# Install dependencies
echo "Installing dependencies from requirements.txt..."
pip install -r requirements.txt
echo "✓ All dependencies installed"
echo ""

# Create directory structure
echo "Creating directory structure..."
mkdir -p data/input/ib_pdf
mkdir -p data/input/dsr_template
mkdir -p data/input/mapping
mkdir -p data/intermediate
mkdir -p data/output
mkdir -p tests
echo "✓ Directories created"
echo ""

# Create .env file if it doesn't exist
if [ ! -f .env ]; then
    echo "Creating .env file..."
    cp env_template.txt .env
    echo "✓ .env file created from template"
    echo ""
    echo "⚠️  IMPORTANT: Edit .env and add your OpenAI API key!"
    echo "   Get your key from: https://platform.openai.com/api-keys"
else
    echo "✓ .env file already exists"
fi
echo ""

# Test installation
echo "=================================="
echo "Testing installation..."
echo "=================================="
python test_system.py

echo ""
echo "=================================="
echo "✅ Setup Complete!"
echo "=================================="
echo ""
echo "Next steps:"
echo ""
echo "1. Edit .env and add your OpenAI API key (if you haven't already):"
echo "   nano .env"
echo ""
echo "2. Every time you work on this project, activate the venv:"
echo "   source venv/bin/activate"
echo ""
echo "3. Run the pipeline:"
echo "   python main.py \\"
echo "     --ib-pdf investigative_brochure.pdf \\"
echo "     --template Drug_Safety_Report_Template.docx \\"
echo "     --mapping IB_to_DSR_Manual_Mapping.md \\"
echo "     --output data/output/DSR_Populated.docx"
echo ""
echo "4. When done working, deactivate:"
echo "   deactivate"
echo ""
echo "📖 See SETUP_GUIDE.md for detailed documentation"
echo ""


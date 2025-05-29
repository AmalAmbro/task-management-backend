#!/bin/bash

# Exit immediately if a command fails
set -e

# Step 1: Create virtual environment
echo "Creating virtual environment..."
python3.12 -m venv env

# Step 2: Activate the virtual environment
echo "Activating virtual environment..."
source env/bin/activate

# Step 3: Install requirements
echo "Installing dependencies from requirements.txt..."
pip install --upgrade pip
pip install -r requirements.txt

# Step 4: Create .env from .env.sample if not already present
if [ ! -f .env ]; then
    echo "Creating .env file from .env.sample..."
    cp .env.sample .env
else
    echo ".env already exists. Skipping copy from .env.sample."
fi

echo "✅ Setup completed successfully!"

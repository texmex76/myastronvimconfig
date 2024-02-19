#!/bin/bash

# Function to install packages in a virtual environment
install_packages() {
    source $1/bin/activate
    pip install numpy torch matplotlib pandas
    deactivate
}

# Get the current user
CURRENT_USER=$(whoami)

# Paths to the virtual environments
VENV1="/home/$CURRENT_USER/.local/share/nvim/mason/packages/pylint/venv"
VENV2="/home/$CURRENT_USER/.local/share/nvim/mason/packages/jedi-language-server/venv"

# Install packages in each virtual environment
install_packages "$VENV1"
install_packages "$VENV2"

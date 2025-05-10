#!/bin/bash

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Install ffmpeg
sudo apt install ffmpeg -y

# Install Whisper from GitHub repository
pip install git+https://github.com/openai/whisper.git

# Transcribe demo file
wget "https://raw.githubusercontent.com/AbdullahAdeebx/sample/refs/heads/main/audio/sample.mp3"

whisper sample.mp3 --model large

# Author: Abdullah Adeeb (abdullahadeeb.xyz)

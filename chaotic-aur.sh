#!/bin/bash

# Step 1: Add Chaotic-AUR keyring
echo "Installing Chaotic-AUR keyring..."
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB

# Step 2: Add Chaotic-AUR repository to pacman.conf
echo "Adding Chaotic-AUR repository to /etc/pacman.conf..."
sudo tee -a /etc/pacman.conf << 'EOF'

[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist
EOF

# Step 3: Add Chaotic-AUR mirrorlist
echo "Downloading Chaotic-AUR mirrorlist..."
sudo curl -o /etc/pacman.d/chaotic-mirrorlist https://geo-mirror.chaotic.cx/chaotic-mirrorlist

# Step 4: Update package database
echo "Updating package database..."
sudo pacman -Syu

echo "Chaotic-AUR has been added successfully!"

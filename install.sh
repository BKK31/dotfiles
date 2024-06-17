#!/bin/bash

arch=$(cat arch_packages.txt)
aur=$(cat aur_packages.txt)

sudo pacman -S --needed --noconfirm $arch

yay -S --needed --noconfirm $aur

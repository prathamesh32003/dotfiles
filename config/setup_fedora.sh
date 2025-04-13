#!/bin/bash

sudo dnf install neovim plymouth plymouth-system-theme aria2 -y

sudo plymouth-set-default-theme bgrt -R

sudo dnf install gnome-shell nautilus ptyxis flatpak lutris -y

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1 -y
sudo dnf update @core -y

sudo dnf install akmod-nvidia -y
sudo dnf install xorg-x11-drv-nvidia-cuda -y
sudo dnf install xorg-x11-drv-nvidia-cuda-libs -y
sudo dnf install nvidia-vaapi-driver libva-utils vdpauinfo -y

sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y
sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld -y
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld -y
sudo dnf swap mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686 -y
sudo dnf swap mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686 -y
sudo dnf install libva-nvidia-driver -y
sudo dnf install libva-nvidia-driver.{i686,x86_64} -y

sudo dnf install rpmfusion-nonfree-release-tainted -y
sudo dnf --repo=rpmfusion-nonfree-tainted install "*-firmware" -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub md.obsidian.Obsidian
flatpak install flathub com.spotify.Client

curl -sS https://starship.rs/install.sh | sh

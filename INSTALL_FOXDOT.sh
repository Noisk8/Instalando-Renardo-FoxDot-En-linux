#!/bin/bash

# Crear un menú usando zenity
distro=$(zenity --list --title="Instalador de FoxDot para Linux 🐧" --text="Selecciona tu distribución de Linux 🐧:" --column="Distro" "🛹 Fedora" "🛹 Ubuntu" "🛹 Archlinux")
clear
case $distro in
    "🛹 Fedora") # Comandos para Fedora
        echo "🦊 INICIO DE INSTALACIÓN DE FOXDOT 🦊"

        echo "INSTALANDO PYTHON 🐍 🐍 🐍"
        sudo dnf install python3 -y
        sudo dnf install python3-pip -y
        sudo dnf install python3-tkinter -y
        sudo dnf install python3-setuptools -y

        echo "INSTALANDO SUPERCOLLIDER 🎹🎹🎹"
        sudo dnf install supercollider -y

        echo "INSTALANDO RENARDO 🦊 🦊 🦊"
        echo ""
        sudo pip3 install renardo
        
echo "Para terminal la instalación ⚙️⚙️⚙️"
        echo "Abre supercoillder ⚙️⚙️⚙️"
        echo "Luego escribre renardo en la terminal y sigue los pasos"
        ;;
    "🛹 Ubuntu") # Comandos para Ubuntu
        echo "🦊 INICIO DE INSTALACIÓN DE FOXDOT 🦊"
        echo ""

        sudo apt update
        sudo apt install git -y

        echo "INSTALANDO PYTHON 🐍 🐍 🐍"
        echo ""
        sudo apt install python3 -y
        sudo apt install python3-tk -y
        sudo apt install python3-setuptools
        sudo easy_install pip3 -y
        sudo apt-get install python3-pip -y

        sudo pip3 install -U setuptools
        sudo pip3 install -U wheel


        echo "INSTALANDO RENARDO 🦊 🦊 🦊"
        echo ""
        sudo pip3 install renardo

        echo "INSTALANDO SUPERCOLLIDER 🎹🎹🎹"
        echo ""
        sudo apt install supercollider -y
        sudo adduser $USER audio

        echo "INSTALANDO QJACKCTL 🎤 🎤 🎤"
        echo ""
        sudo apt-get install qjackctl -y

    echo "Para terminal la instalación ⚙️⚙️⚙️"
        echo "Abre supercoillder ⚙️⚙️⚙️"
        echo "Luego escribre renardo en la terminal y sigue los pasos"
        ;;
    "🛹 Archlinux") # Comandos para ArchLinux
        echo "🦊 INICIO DE INSTALACIÓN DE RENARDO 🦊"

        echo "INSTALANDO YAOURT 🖧 🖧 🖧"
        sudo pacman -S --needed base-devel git wget yajl
        cd /tmp
        git clone https://aur.archlinux.org/package-query.git
        cd package-query/
        makepkg -si && cd /tmp/
        git clone https://aur.archlinux.org/yaourt.git
        cd yaourt/
        makepkg -si

        echo "INSTALANDO QJACKCTL 🎤 🎤 🎤"
        sudo pacman -S qjackctl

        echo "INSTALANDO PYTHON-PIP 🐍 🐍 🐍"
        sudo pacman -S python-pip
        echo "ACTUALIZANDO  pip 🐍 🐍 🐍"
        pip install --upgrade pip
        sudo pacman -S tk
        yaourt python-setuptools


        echo "DESCARGANDO SUPERCOLLIDER 🎹🎹🎹"
        echo "ELIGE LA OPCION 2 Y PRESIONA ENTER"
        echo "ELIGE LA OPCION 2 Y PRESIONA ENTER"
        echo "ELIGE LA OPCION 2 Y PRESIONA ENTER"
        yaourt supercollider

        echo "DESCARGANDO RENARDO 🦊 🦊 🦊"
        sudo pacman -S python-pipx
        pipx ensurepath

        source ~/.bashrc
        pipx install renardo

        echo "Para terminal la instalación ⚙️⚙️⚙️"
        echo "Abre supercoillder ⚙️⚙️⚙️"
        echo "Luego escribre renardo en la terminal y sigue los pasos"
 
        ;;
esac

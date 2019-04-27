#!/bin/bash

echo "Script para Instalar o ZSH + Oh-My-Zsh + PowerFonts + Powerlevel9k"
echo -e '\033[31;40;1m ATENÇÃO:: Antes de continuar você deve ter instalado o GIT caso não tenha selecione a opcão 1 e vai ser instalado git e wget \033[m' 
echo ">>>>Script criado por CronuXShell<<<<" | tr a-z A-Z

opcoes=("Debian/Ubuntu" "RedHat/Fedora" "Opensuse" "Arch/Manjaro" "oh-my-zsh" "powerFonts" "powerlevel9k" "sair")

select nome in "${opcoes[@]}"
do
	case $nome in
		"Debian/Ubuntu")
		sudo apt-get install git -y && sudo apt-get install wget -y && sudo apt-get install zsh -y
		;;
		"RedHat/Fedora")
		sudo dnf install git && sudo dnf install wget && sudo dnf install zsh
		;;
		"Opensuse")
		sudo zypper install git && sudo zypper install wget && sudo zypper install zsh
		;;
		"Arch/Manjaro")
		sudo pacman -S git && sudo pacman -S wget && sudo pacman -S zsh
		;;
		"oh-my-zsh")
		sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
		;;
		"powerFonts")
		git clone https://github.com/powerline/fonts.git --depth=1 && cd fonts && sudo chmod +x install.sh && ./install.sh && cd .. && sudo rm -rf fonts
		;;
		"powerlevel9k")
		git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
		;;
		"sair")
		break
		;;
		*)echo "opção invalida";;
esac
done
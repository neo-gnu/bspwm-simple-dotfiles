#!/bin/bash

# PRINCIPAL PACKAGES
echo "Install these packages if you don't have them installed: "
echo "rofi feh polybar neofetch w3m imagemagick zsh xterm xclip pcmanfm bspwm sxhkd "
echo " My settings are missed up, I didn't have much time to fix some issues"

	configdict() {
		echo "Copying files to ~/.config"
		cp -ri config/* ~/.config	
	}
	homedict() {
		echo "Copyping files to your HOME"
		cp -ri  user/* ~/ && cp gtkrc-2.0 ~/
	}

	rootdict() {
		echo "Copying files to your /usr/share/fonts"
		sudo cp -ri user/.fonts/* /usr/share/fonts/
	}

	zshedit() {
		echo "Adding fetch function, you can check it in ~/.zshrc"
		echo "fetch() {  neofetch --w3m ~/Pictures/debian-logo.png --size 24% --loop
  }" >> ~/.zshrc
  		echo "Done!"
		echo "You can type fetch in your terminal, it will show you the logo type, if you want to switch to your distro, just go to ~/.zshrc perhaps you will find it in the last line!"
		echo "Click on CTRL+C to stop the loop"
	}

	zshedit()	
	configdict()
	homedict()
	rootdict()

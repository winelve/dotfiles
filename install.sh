



configs=("clipse" "glow" "kitty" "rofi" "waybar" "fastfetch" "hypr" "khal" "nvim" "wallpaper")

for config in "${configs[@]}"; do
	target="$HOME/.config/$config" 
	
	rm -rf "$target" 2>/dev/null
	echo "remove:$target"
	
	file_path="$(pwd)/$config"
	ln -s "$file_path" "$HOME/.config/"
	echo "link:$target -> $file_path"
done

# install the config files in ~/.config/
#ln -s $(pwd)/clipse ~/.config
#ln -s $(pwd)/glow ~/.config
#ln -s $(pwd)/kitty ~/.config
#ln -s $(pwd)/rofi ~/.config
#ln -s $(pwd)/waybar ~/.config
#ln -s $(pwd)/fastfetch ~/.config
#ln -s $(pwd)/hypr ~/.config
#ln -s $(pwd)/khal ~/.config
#ln -s $(pwd)/nvim ~/.config
#ln -s $(pwd)/wallpaper ~/.config


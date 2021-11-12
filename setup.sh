PKGS=(
'yay'
'python-pip'
'krita'
'flatpak'
'qbittorrent'
'discord'
'blender'
'steam'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

PKGS=(
'heroic-games-launcher-bin'
'nordic-darker-standard-buttons-theme'
'nordic-darker-theme'
'nordic-kde-git'
'nordic-theme'
'noto-fonts-emoji'
)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done

pip install konsave
konsave -i $HOME/Manjaro-PostInstall/pointfichiers.knsv
sleep 1
konsave -a pointfichiers

echo -e "\nTravail Terminé!\n"
exit

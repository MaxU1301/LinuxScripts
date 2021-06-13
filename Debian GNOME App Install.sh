# install all apps by Max
sudo apt update
sudo apt upgrade
sudo apt install apt-transport-https curl -y

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install git -y
sudo apt install putty -y
sudo apt install menulibre -y
sudo apt install gimp -y
sudo apt install gnome-tweaks -y
sudo apt install cubicsdr -y
sudo apt install brave-browser -y


sudo flatpak install flathub com.visualstudio.code -y # VSCode
sudo flatpak install flathub com.spotify.Client -y # Spotify
sudo flatpak install flathub org.signal.Signal -y # Signal
sudo flatpak install flathub us.zoom.Zoom -y # Zoom
sudo flatpak install flathub com.discordapp.Discord -y # Discord
sudo flatpak install flathub com.bitwarden.desktop -y # Bitwarden
sudo flatpak install flathub org.audacityteam.Audacity -y # Audacity

sudo apt update
sudo apt upgrade

sudo mkdir /opt/appstartup
sudo cp App\ Startup/CubicSDR/CubicSDR.sh /opt/appstartup/CubicSDR.sh
sudo cp App\ Startup/CubicSDR/CubicSDR.desktop /usr/share/applications






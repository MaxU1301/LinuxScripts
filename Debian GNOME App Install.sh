# install all apps by Max
sudo apt update
sudo apt upgrade -y
sudo apt install apt-transport-https curl -y
sudo apt install flatpak -y

# Repos
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo add-apt-repository ppa:costales/folder-color

# Apt install
sudo apt update

sudo apt install git -y
sudo apt install putty -y
sudo apt install menulibre -y
sudo apt install gimp -y
sudo apt install gnome-tweaks -y
sudo apt install cubicsdr -y
sudo apt install brave-browser -y
sudo apt install folder-color

# Flatpak install
sudo flatpak install flathub com.visualstudio.code -y # VSCode
sudo flatpak install flathub com.spotify.Client -y # Spotify
sudo flatpak install flathub org.signal.Signal -y # Signal
sudo flatpak install flathub us.zoom.Zoom -y # Zoom
sudo flatpak install flathub com.discordapp.Discord -y # Discord
sudo flatpak install flathub com.bitwarden.desktop -y # Bitwarden
sudo flatpak install flathub org.audacityteam.Audacity -y # Audacity

sudo apt update
sudo apt upgrade -y

nautilus -q

# Custom Launchers
sudo mkdir /opt/appstartup
sudo cp App\ Startup/CubicSDR/CubicSDR.sh /opt/appstartup/CubicSDR.sh
sudo cp App\ Startup/CubicSDR/CubicSDR.desktop /usr/share/applications

# Nvidia Settings
printf 'nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }"' > ~/nvidia-settings.sh
chmod +x ~/nvidia-settings.sh

# RTL-SDR
sudo apt update -y
sudo apt install git -y
sudo apt install cmake -y
sudo apt install build-essential -y
sudo apt install libusb-1.0-0-dev -y
cd ~
git clone git://git.osmocom.org/rtl-sdr.git
cd rtl-sdr/
mkdir build
cd build
cmake ../ -DINSTALL_UDEV_RULES=ON
make
sudo make install
sudo ldconfig
sudo cp ../rtl-sdr.rules /etc/udev/rules.d/
cd /etc/modprobe.d
sudo touch blacklist-rtl.conf
sudo sh -c 'printf "blacklist dvb_usb_rtl28xxu" >> blacklist-rtl.conf'
echo "You Need To Reboot"







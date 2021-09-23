#### For Wifi: ########################################################################## 

sudo chmod +x install
sudo ./install

#### For Comfortable-Swipe: #############################################################
sudo apt install git g++
sudo apt install libinput-tools libinih-dev libxdo-dev
git clone https://github.com/Hikari9/comfortable-swipe.git --depth 1
cd comfortable-swipe
bash install

sudo gpasswd -a "$USER" "$(ls -l /dev/input/event* | awk '{print $4}' | head --line=1)"
comfortable-swipe start
comfortable-swipe autostart on
comfortable-swipe status
**** Change the "3up"
comfortable-swipe <PROPERTY> [=] <VALUES>


#### Spotify: ###########################################
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client

#### Github: ############################################################################

sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.6.3-linux1/GitHubDesktop-linux-2.6.3-linux1.deb
#sudo apt-get install gdebi-core 
sudo gdebi GitHubDesktop-linux-2.6.3-linux1.deb

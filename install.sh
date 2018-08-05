echo Adding atom repository
sudo add-apt-repository ppa:webupd8team/atom
sudo apt update

echo Installing Atom
sudo apt install atom

echo Installing necessary packages for Home Assistant
sudo apt-get install python3-pip python3-dev python3-venv
sudo apt-get install libssl-dev libxml2-dev libxslt1-dev libjpeg-dev libffi-dev libudev-dev zlib1g-dev

echo Installing Atom packages
python3 -m pip install 'python-language-server[all]'
apm install atom-ide-ui ide-python minimap atom-file-icons atom-material-syntax atom-material-ui highlight-selected atom-beautify


echo Cloning repository
mkdir ~/hass
git clone https://github.com/bboti86/home-assistant.git ~/hass
cd ~/hass
git remote add upstream https://github.com/home-assistant/home-assistant.git


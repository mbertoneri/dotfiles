# Set permissions
sudo chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
sudo npm i -g fkill-cli
sudo npm i -g http-server
sudo npm i -g npm-check
sudo npm i -g standard
sudo npm i -g svgo
sudo npm i -g trash-cli
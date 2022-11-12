# Install extensions
code-server --install-extension Tabnine.tabnine-vscode
code-server --install-extension vscodevim.vim
code-server --install-extension aaron-bond.better-comments
code-server --install-extension ms-toolsai.jupyter-renderers

# Install pylance ( not available through marketplace on code-server )
wget https://cloud.nicky.pro/s/nTqxjpX325xCAHE/download -O pylance.vsix && \
  code-server --install-extension pylance.vsix && \
  rm pylance.vsix

# import default settings.json
mkdir -p /home/nicky/.local/share/code-server/User/
curl -fsSL https://raw.githubusercontent.com/pesvut/vscode-conf/main/settings.json > settings.json
mv settings.json /home/nicky/.local/share/code-server/User/

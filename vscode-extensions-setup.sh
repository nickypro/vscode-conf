# Install extensions
code-server --install-extension Tabnine.tabnine-vscode
code-server --install-extension vscodevim.vim
code-server --install-extension aaron-bond.better-comments
code-server --install-extension ms-toolsai.jupyter-renderers

# Install pylance ( not available through marketplace on code-server )
wget https://cloud.nicky.pro/s/nTqxjpX325xCAHE/download -O pylance.vsix && \
  code-server --install-extension pylance.vsix && \
  rm pylance.vsix

# Lines to add to settings
SETTINGS_JSON="$HOME/.local/share/code-server/User/settings.json"
L1='\n    "keyboard.dispatch":  "keyCode",'
L2='\n    "workbench.colorTheme": "Abyss",'
sed -i "s/{/{$L1$L2/" $SETTINGS_JSON

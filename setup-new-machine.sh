xcode-select --install

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/codelitt/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/codelitt/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"


brew install --cask nordvpn
brew install --cask 1password
brew install gh
brew install slack
brew install todoist
brew install spotify
brew install zoom
brew install visual-studio-code
brew install google-chrome
brew install roam-research
brew install microsoft-teams
brew tap heroku/brew && brew install heroku
brew install --cask iterm2
brew install --cask alfred
brew install --cask postman
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install --cask cursor
brew install --cask fathom

git config --global user.name "Kaio Magalhaes"
git config --global user.email me@kaiomagalhaes.com 
git config push.default current
brew install nvm


upgrade

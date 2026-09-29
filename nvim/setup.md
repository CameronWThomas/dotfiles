# These are instructions to set up nvim approrpriately
In the future this can be a .sh script



1. get a modern install of neovim (12?)
```
# Add the unstable PPA for latest version (currently 0.10.x)
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update
sudo apt install neovim

# Check version
nvim --version
```

2. install dependencies for mason / etc
```
# Install essential build tools and dependencies
sudo apt update
sudo apt install -y build-essential curl git wget unzip tar gzip

# Install Node.js and npm (required for most LSPs)
sudo apt install -y nodejs npm

# Update npm to latest version
# NOTE. this usually fails. it hasnt plauged me yet...
sudo npm install -g npm

# Install Python and pip (for pyright and Python LSPs)
sudo apt install -y python3 python3-pip python3-venv

# Install cargo/rust (some Mason packages need it)
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

# Install other common dependencies
sudo apt install -y ripgrep fd-find
```

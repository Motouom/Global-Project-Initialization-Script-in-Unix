#!/bin/bash

# Define color variables
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No color

echo -e "${GREEN}=============================================================="
echo -e "      Welcome! Starting your system setup for work! 🚀"
echo -e "==============================================================${NC}\n"

 echo -e "${GREEN}Linux OS operating system detected!${NC}\n"

# Update the system
echo -e "${YELLOW}Step 1: Updating the package lists...${NC}"
sudo apt-get update -y
echo -e "${GREEN}Package lists updated successfully!${NC}\n"

echo -e "${YELLOW}Step 2: Upgrading the system...${NC}"
sudo apt-get upgrade -y
echo -e "${GREEN}System upgrade completed!${NC}\n"

# Check if the operating system is Linux or Mac OS
if [[ $(uname) == 'Linux' ]]; then
    echo -e "${GREEN}Linux operating system detected!${NC}\n"

    echo -e "${YELLOW}Step 3: Installing required packages...${NC}"

    # Install Git
    echo -e "${YELLOW}Installing Git...${NC}"
    sudo apt-get install -y git
    echo -e "${GREEN}Git installed successfully!${NC}\n"

    # Install Vim
    echo -e "${YELLOW}Installing Vim...${NC}"
    sudo apt-get install -y vim
    echo -e "${GREEN}Vim installed successfully!${NC}\n"

    # Install Python3
    echo -e "${YELLOW}Installing Python3...${NC}"
    sudo apt-get install -y python3
    echo -e "${GREEN}Python3 installed successfully!${NC}\n"

    # Install Python3-pip
    echo -e "${YELLOW}Installing Python3-pip...${NC}"
    sudo apt-get install -y python3-pip
    echo -e "${GREEN}Python3-pip installed successfully!${NC}\n"

    # Install Python3-venv
    echo -e "${YELLOW}Installing Python3-venv...${NC}"
    sudo apt-get install -y python3-venv
    echo -e "${GREEN}Python3-venv installed successfully!${NC}\n"

    # Install Python development tools
    echo -e "${YELLOW}Installing Python development tools...${NC}"
    sudo apt-get install -y python3-dev
    echo -e "${GREEN}Python development tools installed!${NC}\n"

    # Install curl
    echo -e "${YELLOW}Installing Curl...${NC}"
    sudo apt-get install -y curl
    echo -e "${GREEN}Curl installed successfully!${NC}\n"

    # Install wget
    echo -e "${YELLOW}Installing Wget...${NC}"
    sudo apt-get install -y wget
    echo -e "${GREEN}Wget installed successfully!${NC}\n"

    # Install Node.js
    echo -e "${YELLOW}Installing Node.js via NVM...${NC}"
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    nvm install 18
    nvm use 18
    echo -e "${GREEN}Node.js and NPM installed successfully!${NC}\n"

    # Install Angular CLI
    echo -e "${YELLOW}Installing Angular CLI...${NC}"
    npm install -g @angular/cli
    echo -e "${GREEN}Angular CLI installed!${NC}\n"

    # Install VLC
    echo -e "${YELLOW}Installing VLC...${NC}"
    sudo apt-get install -y vlc
    echo -e "${GREEN}VLC installed successfully!${NC}\n"

    # Install VS Code
    echo -e "${YELLOW}Installing VS Code...${NC}"
    sudo snap install --classic code
    echo -e "${GREEN}VS Code installed successfully!${NC}\n"

    # Install Java 17
    echo -e "${YELLOW}Installing Java 17...${NC}"
    sudo apt install openjdk-17-jdk -y
    echo -e "${GREEN}Java 17 installed successfully!${NC}\n"

    # Install Google Chrome
    echo -e "${YELLOW}Installing Google Chrome...${NC}"
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo apt -f install -y
    echo -e "${GREEN}Google Chrome installed successfully!${NC}\n"

elif [[ $(uname) == 'Darwin' ]]; then
    echo -e "${GREEN}Mac OS operating system detected!${NC}\n"

    echo -e "${YELLOW}Step 3: Updating Homebrew...${NC}"
    brew update
    echo -e "${GREEN}Homebrew updated!${NC}\n"

    echo -e "${YELLOW}Step 4: Installing required packages...${NC}"

    # Install Git
    echo -e "${YELLOW}Installing Git...${NC}"
    brew install git
    echo -e "${GREEN}Git installed successfully!${NC}\n"

    # Install Vim
    echo -e "${YELLOW}Installing Vim...${NC}"
    brew install vim
    echo -e "${GREEN}Vim installed successfully!${NC}\n"

    # Install Python3
    echo -e "${YELLOW}Installing Python3...${NC}"
    brew install python3
    echo -e "${GREEN}Python3 installed successfully!${NC}\n"

    # Install Python3-pip
    echo -e "${YELLOW}Installing Python3-pip...${NC}"
    brew install python3-pip
    echo -e "${GREEN}Python3-pip installed successfully!${NC}\n"

    # Install Python3-venv
    echo -e "${YELLOW}Installing Python3-venv...${NC}"
    brew install python3-venv
    echo -e "${GREEN}Python3-venv installed successfully!${NC}\n"

    # Install Curl
    echo -e "${YELLOW}Installing Curl...${NC}"
    brew install curl
    echo -e "${GREEN}Curl installed successfully!${NC}\n"

    # Install Wget
    echo -e "${YELLOW}Installing Wget...${NC}"
    brew install wget
    echo -e "${GREEN}Wget installed successfully!${NC}\n"

    # Install Node.js
    echo -e "${YELLOW}Installing Node.js...${NC}"
    brew install node
    echo -e "${GREEN}Node.js installed successfully!${NC}\n"

    # Install NPM
    echo -e "${YELLOW}Installing NPM...${NC}"
    brew install npm
    echo -e "${GREEN}NPM installed successfully!${NC}\n"

else
    echo -e "${RED}Unsupported operating system detected! Please use Linux or Mac OS.${NC}"
fi

echo -e "${GREEN}=============================================================="
echo -e "      All done! Your system is ready for work. 🎉"
echo -e "==============================================================${NC}"


#!/bin/bash
mkdir -p ~/.ssh
echo "Get the github key and enter it." && sleep 2
nvim ~/.ssh/id_github && chmod 600 ~/.ssh/id_github
echo "alias sg=\"GIT_SSH_COMMAND='ssh -i ~/.ssh/id_github' git clone git@github.com:ascyii/dotfiles.git\"" >> ~/.bashrc
git config --global user.name "Jonas Hahn" && git config --global user.email "jonashahn1@gmx.net"

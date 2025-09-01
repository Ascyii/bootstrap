#!/bin/bash
mkdir -p ~/programs/bin
echo 'export PATH="$PATH:$HOME/programs/bin/"' >> ~/.bashrc
cat >> ~/.profile << 'EOF'
# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
EOF

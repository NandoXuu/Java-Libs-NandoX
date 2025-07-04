#!/bin/bash
clear
echo "⚙ Installing Java 17..."
mkdir -p $HOME/jre && cd $HOME/jre
wget https://github.com/Hax4us/java/releases/download/v8/jdk17.tar.gz -O jdk17.tar.gz
tar -xvzf jdk17.tar.gz
rm jdk17.tar.gz
PROFILE_FILE="$HOME/.bashrc"
if [ ! -f "$PROFILE_FILE" ]; then PROFILE_FILE="$HOME/.zshrc"; fi
if ! grep -q 'jdk17/bin' "$PROFILE_FILE"; then
  echo 'export PATH=$HOME/jre/jdk17/bin:$PATH' >> "$PROFILE_FILE"
fi
export PATH=$HOME/jre/jdk17/bin:$PATH
java -version
echo "Java installed!"

echo "↓ Cloning repository..."
git clone https://github.com/NandoXuu/Java-Libs-NandoX.git ~/JavaLibsNX
cd ~/JavaLibsNX

echo "! Running main.py..."
if [ -f "main.py" ]; then
  python main.py
else
  echo "main.py not found!"
fi

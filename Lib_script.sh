#!/bin/bash
clear
echo "🛠️ Installing Java 17 (JDK) in Termux..."
mkdir -p $HOME/jre && cd $HOME/jre
echo "↓ Downloading Java JDK 17..."
wget https://github.com/Hax4us/java/releases/download/v8/jdk17.tar.gz -O jdk17.tar.gz
echo " Extracting JDK..."
tar -xvzf jdk17.tar.gz
rm jdk17.tar.gz
echo "⚙ Adding Java to PATH..."
PROFILE_FILE="$HOME/.bashrc"
if [ ! -f "$PROFILE_FILE" ]; then
  PROFILE_FILE="$HOME/.zshrc"
fi
if ! grep -q 'jdk17/bin' "$PROFILE_FILE"; then
  echo 'export PATH=$HOME/jre/jdk17/bin:$PATH' >> "$PROFILE_FILE"
fi
export PATH=$HOME/jre/jdk17/bin:$PATH
echo "✓ Verifying Java installation..."
java -version
echo "Java 17 is now installed and ready to use in Termux!"

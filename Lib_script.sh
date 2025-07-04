# !/data/data/com.termux/files/usr/bin/bash
# Java Libs - NandoX

green='\033[0;32m'
nc='\033[0m'


facts=(
    "Lua was created in 1993 in Brazil."
    "Lua is one of the fastest scripting languages."
    "The word 'Lua' means 'Moon' in Portuguese."
    "Roblox originally used Lua for scripting."
    "Lua uses tables as its only complex data structure."
)
random_fact=${facts[$RANDOM % ${#facts[@]}]}


clear
echo -e "${green}🔧 Java Libs - NandoX is starting..."
echo -e "💡 Lua Fact: ${random_fact}${nc}"
sleep 2

echo "📦 Updating Termux..."
pkg update -y && pkg upgrade -y

echo "📦 Installing basic dependencies..."
pkg install wget tar nano -y

echo "📁 Creating ~/jre directory and downloading JRE 17 for Termux (arm64)..."
mkdir -p ~/jre && cd ~/jre
wget https://github.com/zgpio/jre17-termux/releases/download/v17.0.1/jre17-arm64.tar.gz

echo "📦 Extracting JRE..."
tar -xvzf jre17-arm64.tar.gz
rm jre17-arm64.tar.gz

echo "⚙️ Adding Java to PATH permanently..."
if ! grep -q 'jre/bin' ~/.bashrc; then
    echo 'export PATH=$HOME/jre/bin:$PATH' >> ~/.bashrc
fi

echo "🔄 Reloading terminal to apply PATH..."
source ~/.bashrc

echo "✅ Checking Java installation..."
java -version && echo "✔️ Java installed successfully!" || echo "❌ Something went wrong."

# Finish
sleep 2
read -p "🔰 Press Enter to clear and reload the terminal..."
clear
exec bash

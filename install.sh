#!/data/data/com.termux/files/usr/bin/bash
clear
echo "⚙ Installing Java 17..."

pkg update -y && pkg install -y openjdk-17

echo "✅ Java 17 installed successfully!"
echo "↓ Cloning repository..."
git clone https://github.com/NandoXuu/Java-Libs-NandoX.git ~/JavaLibsNX

cd ~/JavaLibsNX
if [ -f "main.py" ]; then
  echo "→ Running main.py..."
  python main.py
else
  echo "main.py not found!"
fi

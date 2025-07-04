#!/data/data/com.termux/files/usr/bin/bash
clear
echo "⚙ Instalando ambiente completo para Java..."

pkg update -y && pkg upgrade -y


pkg install -y openjdk-17 git wget curl zip unzip


pkg install -y build-essential clang

if ! grep -q "JAVA_HOME" ~/.bashrc; then
  echo " Configurando JAVA_HOME..."
  echo 'export JAVA_HOME=/data/data/com.termux/files/usr/lib/jvm/openjdk-17' >> ~/.bashrc
  echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
fi

export JAVA_HOME=/data/data/com.termux/files/usr/lib/jvm/openjdk-17
export PATH=$JAVA_HOME/bin:$PATH

# Test
echo "☕ Verificando instalação do Java..."
java -version

echo ""
echo "Ambiente Java configurado com sucesso no Termux!"
echo "Você já pode compilar e executar arquivos .java!"
echo ""
echo "Exemplo:"
echo "  javac Hello.java"
echo "  java Hello"

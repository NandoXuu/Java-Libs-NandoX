# Java Libs - NandoX ☕️

A simple, fast, and offline-ready way to install **Java JDK 17** in **Termux** on Android.

---

## 📁 Download

To install Java JDK 17 on Termux, just run the following command:

```bash
pkg update -y && pkg install -y wget tar && wget https://raw.githubusercontent.com/NandoXuu/Java-Libs-NandoX/main/install.sh && bash install.sh


---

⚙ How it works

This repository provides:

A clean and portable Java JDK 17 for Termux

Fast and minimal installation (via wget and tar)

No internet required after first setup (offline-ready)

Global access to java and javac via updated $PATH

Optional Python script to test your Java install (if provided)



---

📄 Installation Steps

1. Update Termux:

pkg update -y


2. Install needed packages:

pkg install -y wget tar


3. Download and execute the installer:

wget https://raw.githubusercontent.com/NandoXuu/Java-Libs-NandoX/main/install.sh
bash install.sh




---

✅ Usage Example

Create a simple Java file:

cat > Hello.java << EOF
public class Hello {
    public static void main(String[] args) {
        System.out.println("Hello from Java on Termux!");
    }
}
EOF

Compile and run:

javac Hello.java
java Hello

Expected output:

Hello from Java on Termux!


---

🧪 Optional Python Tester

If a test.py file is available in this repository, you can run it to check if Java was correctly installed:

python test.py


---

💻 System Compatibility

✅ Android (Termux)

✅ Linux-based shells with wget and tar

❌ Not designed for Windows or macOS



---

☕️ Why this project?

Installing Java in Termux is often slow or buggy. This lightweight solution allows you to use Java 17 easily, with no configuration headaches, right from your Android terminal.


---

🔚 Made with care

by NandoX


Install Java JRE 17 automatically on Termux (ARM64) with a single command. A lightweight, fast, and functional project created by NandoX to make running Java on Android easy.

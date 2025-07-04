# Java Libs - NandoX ☕️

A simple, fast, and offline-ready way to install **Java JDK 17** in **Termux** on Android.

---

## 📁 Download

To install Java JDK 17 on Termux, just run the following command:

```bash
pkg update -y && pkg install -y wget tar && wget https://raw.githubusercontent.com/NandoXuu/Java-Libs-NandoX/main/install.sh && bash install.sh
```

---

📦 Requirements
```
pkg update -y && pkg install -y wget tar git
```

---

⚙ How it works

This repository provides:

A clean and portable Java JDK 17 setup for Termux

Fast and minimal installation (via wget and tar)

Fully offline-ready after the first setup

Global access to java and javac via updated $PATH



---

📄 Installation Steps

1. Update Termux:


```
pkg update -y
```
2. Install required packages:


```
pkg install -y wget tar git
```
3. Download and run the installer:


```
wget https://raw.githubusercontent.com/NandoXuu/Java-Libs-NandoX/main/install.sh
bash install.sh
```

---

✅ Usage Example

1. Create a simple Java file:
```


cat > Hello.java << EOF
public class Hello {
    public static void main(String[] args) {
        System.out.println("Hello from Java on Termux!");
    }
}
EOF
```
2. Compile and run:



javac Hello.java
java Hello

3. Expected output:



Hello from Java on Termux!


---

💻 System Compatibility

✅ Android (Termux)
✅ Linux-based shells with wget and tar
❌ Not designed for Windows or macOS


---

☕️ Why this project?

Installing Java in Termux is often slow or buggy.
This lightweight solution allows you to use Java 17 easily, with no configuration headaches — right from your Android terminal.


---

🔚 Made with care

by NandoX ☕️

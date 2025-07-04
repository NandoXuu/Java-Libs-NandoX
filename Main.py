import os

print("=== Welcome to Java Libs NandoX ===")
print("⚙ Listing repository contents:\n")

files = os.listdir()
for file in files:
    print("> " + file)

print("\n✓ Script executed successfully.")

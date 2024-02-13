# 🌟 Checksum Comparison Script 🌟

This script calculates and compares the checksums of an ISO file and a USB device, ensuring data integrity and consistency with a touch of cuteness! It's designed for repeated executions, making it perfect for those who value both functionality and aesthetics. 🎀

## ✨ Features

- Calculates SHA-1 checksums for an ISO file and a USB device. 📀💾
- Compares the calculated checksums and displays the result. ✔️❌
- Allows for repeated execution upon user request. 🔁

## 🚀 Usage

1. First, grant the script execution permissions:
   ```bash
   chmod +x checksum_compare.sh

2. Type the password in case the dd process requires the permission:
   ```bash
   sudo -v

2. Run the script:
   ```bash
   ./checksum_compare.sh

The script uses predefined paths for the ISO file and USB device identifier, which you can modify within the script as needed.

📋 Prerequisites
The pv command must be installed. You can install it with brew install pv. 🍺
Designed with macOS in mind, but it may work on other UNIX-like systems if the necessary commands are available. 🐧

📝 Notes
The script uses sudo to calculate the checksum of the USB device, so you may be prompted to enter your system password. 🔐

💬 Contact
For questions or feedback, please reach out through my GitHub page:
https://github.com/Shintaro-run 💌

📄 License
This script is released under the MIT License. See the LICENSE file in the repository for more details. 📖



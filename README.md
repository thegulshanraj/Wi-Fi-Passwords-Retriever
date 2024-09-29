# Wi-Fi Passwords Retriever

This script retrieves saved Wi-Fi passwords from the computer and saves them in a text file. It works on Windows systems using `netsh` commands.

## Features
- Retrieves all saved Wi-Fi networks' names and their passwords.
- Saves the Wi-Fi network names and passwords in a file named `wifi_passwords.txt` in the current directory.
- Works on both `.bat` and `.exe` formats.

## Output Format
The output file will look like this:

```
Wi-Fi Passwords 
--------------- 
Network: Network_Name | Password: ########
```

## How to Use

You can use this script in two ways:

### 1. Run the Batch File
- Simply download and double-click the `wifi_passwords.bat` file.
- The script will create a `wifi_passwords.txt` file in the same directory.

### 2. Run the Executable File
- If you prefer using an `.exe` file, you can also run the `wifi_passwords.exe`.
- The file will also generate a `wifi_passwords.txt` file in the current directory.

## Prerequisites
- This script requires a Windows operating system with administrator privileges to run the `netsh` command and retrieve the Wi-Fi passwords.

## Disclaimer
- This script retrieves Wi-Fi passwords that are already saved on the computer and does not hack or crack networks.
- Only use this on your own computer or with permission from the owner.

## License
This project is licensed under the MIT License.

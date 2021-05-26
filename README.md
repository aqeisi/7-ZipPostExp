# 7-ZipPostAuth

Tested on Version 19.00

7-Zip is a free and open-source file archiver, a utility used to place groups of files within compressed containers known as "archives". It is often used to encrypt sensitive file contents that are saved on disk.

After analysis of the application and the code, the process of opening a file and then reencrypting was understood.

1. User inputs the password to open/edit files in an encrypted archive.
2. 7-Zip makes a new directory in the C:\Users\%USERNAME%\AppData\Local\Temp directory. The new directory has a fixed name that starts with "Rar$" followed by randomly generated numbers.
3. 7-Zip unencrypts the file(s) in the archive and places them in the above created directory, in plain text.
4. Once editing is done, 7-zip will reencrypt the data and save it on disk.
5.  7-Zip will delete the above created directory and delete the plain text files.

During the duration of opening a file to edit it and closing the file, **the attacker has access to plaintext documents**.

## Script

The powershell script in this repo is a **PoC for exfiltrating sensitive data encrypted by 7-zip** to an external attacker server. This is done in the  **post exploitation** phase.

**Steps**
- Add the batch file to the victim's Startup folder (C:\Users\USERNAME\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup).
- Add the powershell script in the preceding directory.

**To do**
- Add counters so that sent files are not resent to the attacker multiple times, generating unnecessary traffic.

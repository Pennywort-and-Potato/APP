# INSTRUCTION
### Step 1: Install
- [Git (for Windows)](https://git-scm.com/)
- [Github CLI](https://cli.github.com/)
### Step 2: Run setup script
**Note: On Windows, open this repository folder, right click -> Git bash here** </br>
**Note 2: Remember to auth github client**
```bash
./setup.sh
```
This script will generate a .env file.
### Step 3: Run docker
```bash
docker-compose up
```
On Linux or MacOS:
```bash
make [OPTION]
```
### MAKE FOR WINDOWS
Install WINGNU32
```bash
winget install GnuWin32
```
Then, Win + R
```path
"C:\Windows\system32\rundll32.exe" sysdm.cpl,EditEnvironmentVariables
```
![Edit environment variable](https://i.imgur.com/wQ4yYzs.png) </br>
![Add environment variable](https://i.imgur.com/86SuhXz.png)
</br>Add this
```path
C:\Program Files (x86)\GnuWin32\bin
```
Now you can use Makefile via this command:
```bash
make.exe [OPTION]
```
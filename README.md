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

### Step 3: Run

```bash
make
```

Note: In case make has error, follow [this](#make-for-windows) below instruction
<a name="make-for-windows"></a>
## Make for Windows 

Install GnuWin32

```bash
winget install -e --id GnuWin32.Make
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

## All MAKE option

### dev

```bash
make dev
```

Run all image in development mode

### build

```bash
make build
```

Rebuild all image, using cache.
Pretty fast, but when you add more package, these some chance to get error

### clean_build

```bash
make clean_build
```

Rebuild all image, ignore cache.
Extremely slow. Only use when add more package, lib to app.
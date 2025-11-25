# 🎮 Quick Start Guide - Donkey Kong

## For Players (Just Want to Play)

### Windows Users:
1. Download from [Releases](https://github.com/Dan-Ofri/DonkeyKongOG/releases) *(coming soon)*
2. Extract the ZIP
3. Double-click `DonkeyKongOG.exe`
4. **Enjoy!** 🦍

---

## For Developers (Build from Source)

### Easiest Method (Windows):
```bash
# 1. Clone the repo
git clone https://github.com/Dan-Ofri/DonkeyKongOG.git
cd DonkeyKongOG

# 2. Build (one click!)
build.bat

# 3. Run (one click!)
run.bat
```

### Visual Studio:
1. Open `DonkeyKongOG.sln`
2. Press `F5` (Debug) or `Ctrl+F5` (Release)
3. **Play!**

### Command Line (Advanced):
```bash
# Using g++
g++ -std=c++17 -o DonkeyKongOG.exe *.cpp -I.
./DonkeyKongOG.exe

# Using MSBuild
msbuild DonkeyKongOG.sln /p:Configuration=Release
x64\Release\DonkeyKongOG.exe
```

---

## Controls

| Key | Action |
|-----|--------|
| **A** / **D** | Move Left/Right |
| **W** / **X** | Climb Up/Down |
| **SPACE** | Stay |
| **ESC** | Pause |

---

## Need Help?

- 📖 [Full README](README.md)
- 🐛 [Report Issues](https://github.com/Dan-Ofri/DonkeyKongOG/issues)
- 💬 [Discussions](https://github.com/Dan-Ofri/DonkeyKongOG/discussions)

---

**Happy Gaming!** 🎮🦍

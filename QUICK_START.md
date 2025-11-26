# 🎮 Quick Start Guide - Donkey Kong

## For Players (Just Want to Play)

### Windows Users:
1. Download from [Releases](https://github.com/Dan-Ofri/DonkeyKongOG/releases/latest)
2. Extract the ZIP
3. Double-click `DonkeyKongOG.exe`

**⚠️ Windows SmartScreen Warning:**  
You'll see **"Windows protected your PC"** - this is normal!

**To bypass:**
1. Click **"More info"** 
2. Click **"Run anyway"**

✅ The app is safe - all code is open-source on GitHub!

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
| **A** | Move Left |
| **D** | Move Right |
| **W** | Climb Up / Jump |
| **X** | Climb Down |
| **S** | Stay in place |
| **ESC** | Pause/Stop game |

> Keys work in both upper and lower case

## Quick Game Guide

**Objective:** Climb to reach Pauline (`$`)!

**Game Board:**
- `@` = Mario (you!)
- `$` = Pauline (your goal!)
- `&` = Donkey Kong
- `Q` = Walls/Boundaries
- `H` = Ladders (climb with W/X)
- `=`, `<`, `>` = Floors (barrels roll here)
- `O` = Barrels (enemies - avoid!)
- `x` = Ghosts (enemies)
- `P` = Hammer (20 moves of invincibility!)

**Tips:**
- You have 3 lives (shown as hearts)
- Grab the hammer (`P`) to become invincible!
- Avoid enemies or use hammer power
- Use ladders strategically to dodge barrels

---

## Need Help?

- 📖 [Full README](README.md)
- 🐛 [Report Issues](https://github.com/Dan-Ofri/DonkeyKongOG/issues)
- 💬 [Discussions](https://github.com/Dan-Ofri/DonkeyKongOG/discussions)

---

**Happy Gaming!** 🎮🦍

# 📦 How to Create a GitHub Release

## Prerequisites
✅ Project is already pushed to GitHub  
✅ Release ZIP file is ready: `DonkeyKongOG-v1.0-Windows-x64.zip`

## Steps to Create Release on GitHub

### 1. Go to GitHub Repository
Navigate to: https://github.com/Dan-Ofri/DonkeyKongOG

### 2. Create New Release
1. Click on **"Releases"** (right sidebar)
2. Click **"Create a new release"** or **"Draft a new release"**

### 3. Fill Release Details

**Tag version:**
```
v1.0.0
```

**Release title:**
```
🦍 Donkey Kong v1.0 - First Release
```

**Description:**
````markdown
# 🎮 Donkey Kong C++ - First Official Release!

Classic Donkey Kong arcade game reimagined in modern C++ with advanced OOP design.

## ✨ Features

- **4 Game Modes**: Regular, Save, Load, Silent
- **Multiple Levels**: Pre-loaded test levels included
- **Console Graphics**: Full ASCII art rendering
- **Object-Oriented Design**: Showcasing C++17 best practices
- **Cross-platform Code**: Compiles on Windows, Linux (with modifications)

## 📥 Download & Play

1. Download `DonkeyKongOG-v1.0-Windows-x64.zip`
2. Extract the ZIP file
3. Double-click `DonkeyKongOG.exe`
4. **Enjoy!** 🦍

## 🕹️ Controls

| Key | Action |
|-----|--------|
| **a** or **A** | Move Left |
| **d** or **D** | Move Right |
| **w** or **W** | Climb Up / Jump |
| **x** or **X** | Climb Down |
| **s** or **S** | Stay in place |
| **ESC** | Pause game |

## 📋 What's Included

- ✅ `DonkeyKongOG.exe` - Ready to run executable
- ✅ Level files (dkong_01/02/03.screen)
- ✅ Sample gameplay recordings
- ✅ README with instructions

## 💻 System Requirements

- **Windows** 7/8/10/11 (64-bit)
- **No dependencies** - Just run!

## 🛠️ For Developers

Want to build from source? Check out the full [README](https://github.com/Dan-Ofri/DonkeyKongOG#readme)

## 📝 Changelog

### First Release (v1.0.0)
- ✨ Initial public release
- ✅ Full game implementation
- ✅ 4 gameplay modes
- ✅ Pre-loaded test levels
- ✅ Complete documentation

## 🙏 Acknowledgments

- Original Donkey Kong by Nintendo (1981)
- Built as part of OOP C++ course (2024/2025)

---

**Made with ❤️ and C++17**

© 2025 Dan Ofri | MIT License
````

### 4. Upload Release Asset

1. Click **"Attach binaries by dropping them here or selecting them"**
2. Upload: `DonkeyKongOG-v1.0-Windows-x64.zip` (65KB)

### 5. Publish Release

1. ✅ Check **"Set as the latest release"**
2. Click **"Publish release"** (green button)

## 🎉 Done!

Your release is now live at:
```
https://github.com/Dan-Ofri/DonkeyKongOG/releases/tag/v1.0.0
```

Users can now:
- ✅ Download the ZIP directly
- ✅ Play without building from source
- ✅ See professional release notes

---

## 📝 Notes

- The ZIP file is **NOT** committed to git (excluded by `.gitignore`)
- Release assets are stored by GitHub separately
- Future releases: increment version (v1.1.0, v2.0.0, etc.)

## 🔄 Future Releases

When you want to create a new release:

1. Make changes and commit
2. Build new release: `build.bat`
3. Update version in ZIP name: `DonkeyKongOG-v1.1.0-Windows-x64.zip`
4. Create new GitHub release with new tag: `v1.1.0`
5. Upload new ZIP

---

**Ready to create your first release!** 🚀

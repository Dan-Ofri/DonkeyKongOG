# 🦍 Donkey Kong - C++ Console Game

![C++](https://img.shields.io/badge/C++-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)
![Visual Studio](https://img.shields.io/badge/Visual_Studio-5C2D91?style=for-the-badge&logo=visual%20studio&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

**Classic arcade game reimagined in C++ with advanced OOP design**

🎮 **Quick Start:** Run `build.bat` to compile, `run.bat` to play!  
📖 **Full Guide:** See [QUICK_START.md](QUICK_START.md)

---

## 📖 About

Feature-rich **C++ console implementation** of Donkey Kong, showcasing **inheritance, polymorphism, file I/O, and game state management**.

> **👥 Team Project:** Developed collaboratively with [@gurbe22](https://github.com/gurbe22). I implemented the enemy AI systems, save/load functionality, and replay mechanism using design patterns.

### 🎮 Game Modes
- **Regular** - Classic arcade gameplay
- **Save** - Record gameplay for replay
- **Load** - Watch recorded games step-by-step
- **Silent** - Automated replay verification

---

## ✨ Key Features

**Gameplay:**
- 3 challenging levels (dkong_01/02/03)
- Dynamic enemies: Barrels (`O`), Ghosts (`x`), Special Ghosts
- Hammer power-up (`P`) - 20 moves of invincibility
- Lives system with 3 hearts
- Goal: Reach Pauline (`$`) at the top

**Technical:**
- Polymorphic game modes with virtual methods
- Save/load system with file I/O
- Enemy hierarchy with specialized behaviors
- Collision detection and console rendering
- RAII principles and STL containers

---

## 🚀 Quick Start

### Option 1: Download & Play
1. Get the [latest release](https://github.com/Dan-Ofri/DonkeyKongOG/releases)
2. Extract ZIP
3. Double-click `DonkeyKongOG.exe`

### Option 2: Build from Source

**Prerequisites:** Windows, Visual Studio 2019+, C++17

**Using Scripts (Easiest):**
```bash
build.bat  # Compiles the game
run.bat    # Runs the game
```

**Using Visual Studio:**
```bash
git clone https://github.com/Dan-Ofri/DonkeyKongOG.git
cd DonkeyKongOG
# Open DonkeyKongOG.sln in Visual Studio
# Press F5 to build and run
```

**Command Line:**
```bash
MSBuild DonkeyKongOG.sln /p:Configuration=Release /p:Platform=x64
.\x64\Release\DonkeyKongOG.exe
```

---

## 🕹️ Controls

| Key | Action |
|-----|--------|
| **A/D** | Move Left/Right |
| **W** | Climb Up / Jump |
| **X** | Climb Down |
| **S** | Stay in place |
| **ESC** | Pause game |

---

## 🎯 Game Elements

| Symbol | Meaning |
|--------|---------|
| `@` | Mario (player) |
| `$` | Pauline (goal) |
| `&` | Donkey Kong |
| `H` | Ladder |
| `=/</>` | Floors |
| `O` | Barrel (enemy) |
| `x` | Ghost (enemy) |
| `P` | Hammer (power-up) |
| `♥` | Life |

**Objective:** Navigate platforms and ladders, avoid enemies, reach Pauline to win!

---

## 🏗️ Architecture

### Project Structure
```
DonkeyKongOG/
├── Core Game Logic
│   ├── game.h/cpp              # Base orchestration
│   ├── regularGame.h/cpp       # Standard gameplay
│   ├── saveGame.h/cpp          # Save functionality
│   ├── loadGame.h/cpp          # Replay system
│   └── loadSilentGame.h/cpp    # Silent verification
│
├── Game Entities
│   ├── mario.h/cpp             # Player character
│   ├── enemy.h/cpp             # Enemy base class
│   ├── barrel.h/cpp            # Barrel enemy
│   ├── ghost.h/cpp             # Ghost enemy
│   └── specialGhost.h/cpp      # Special ghost
│
└── Game Systems
    ├── board.h/cpp             # Level management
    ├── gameConfig.h/cpp        # Constants
    ├── point.h/cpp             # Position handling
    └── utils.h/cpp             # Helper functions
```

### Class Hierarchy
```
Game (Abstract Base)
├── RegularGame
├── SaveGame
├── LoadGame
└── LoadSilentGame

Enemy (Abstract Base)
├── Barrel
├── Ghost
└── SpecialGhost
```

### Design Patterns

**Strategy Pattern - Game Modes:**
```cpp
class Game {
protected:
    virtual void goToSleep() const = 0;
    virtual bool processGameInput(...) = 0;
};
```

**Polymorphism - Enemy Behavior:**
```cpp
class Enemy {
public:
    virtual void move(Board& board) = 0;
    virtual char getChar() const = 0;
    virtual ~Enemy() {}
};
```

---

## 🛠️ Technologies

- **C++17** - Core language with STL containers
- **Visual Studio 2019+** - IDE and compiler
- **Windows Console API** - Terminal rendering
- **File Streams** - Save/load functionality

---

## 📚 Learning Outcomes

**OOP Mastery:**
- Advanced inheritance and polymorphism
- Abstract classes and virtual functions
- RAII and memory management

**Software Design:**
- Design patterns (Strategy, Template Method)
- Modular architecture
- File I/O and state management

**Game Development:**
- Game loop implementation
- Collision detection
- Replay system with deterministic recording

---

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Dan Ofri**
- GitHub: [@Dan-Ofri](https://github.com/Dan-Ofri)
- Email: ofridan@gmail.com

---

## 🙏 Acknowledgments

- **Course:** Object-Oriented Programming in C++
- **Academic Project:** Year 2, Semester A (2024/2025)
- **Original Game:** Donkey Kong by Nintendo (1981)

---

<div align="center">

**⭐ If you enjoyed this project, please give it a star!**

Made with ❤️ and C++

</div>

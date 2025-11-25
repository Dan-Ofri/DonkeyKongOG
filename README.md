# 🦍 Donkey Kong - C++ Console Game

<div align="center">

![C++](https://img.shields.io/badge/C++-00599C?style=for-the-badge&logo=c%2B%2B&logoColor=white)
![Visual Studio](https://img.shields.io/badge/Visual_Studio-5C2D91?style=for-the-badge&logo=visual%20studio&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

**Classic arcade game reimagined in C++ with advanced OOP design**

**🎯 Quick Start:** Just run `build.bat` to compile and `run.bat` to play!

[Features](#-features) • [Gameplay](#-gameplay) • [Architecture](#-architecture) • [Installation](#-installation) • [Controls](#-controls)

</div>

---

## 📖 About

A feature-rich **C++ console implementation** of the classic Donkey Kong arcade game, showcasing advanced Object-Oriented Programming concepts including **inheritance, polymorphism, file I/O, and game state management**.

### 🎮 Game Modes

- **Regular Mode** - Classic arcade gameplay
- **Save Mode** - Record your gameplay for later review
- **Load Mode** - Replay recorded games step-by-step
- **Silent Mode** - Automated replay verification

---

## ✨ Features

### 🎨 Gameplay Features
- **Multi-level progression** - Navigate through challenging levels
- **Dynamic enemies** - Barrels, Ghosts, and Special Ghosts with unique behaviors
- **Power-ups** - Hammer powerup for temporary invincibility
- **Lives system** - 3 lives per game
- **Score tracking** - Accumulate points for completing levels

### 💻 Technical Highlights
- **Polymorphic game modes** - Abstract base class with virtual methods
- **File I/O system** - Save/load game states and replay functionality
- **Enemy hierarchy** - Base `Enemy` class with specialized behaviors
- **Collision detection** - Mario vs enemies, boundaries, and objectives
- **Console rendering** - Dynamic board updates with ANSI positioning

### 🛠️ Engineering Features
- **RAII principles** - Proper resource management with destructors
- **STL containers** - Vectors for dynamic enemy management
- **Command-line arguments** - Different game modes via argc/argv
- **Modular design** - Separation of concerns across classes

---

## 🚀 Installation & Running

### 🎮 Quick Play (No Installation Required)

**Want to just play the game?**

1. **Download the latest release** from [Releases](https://github.com/Dan-Ofri/DonkeyKongOG/releases)
2. **Extract the ZIP file**
3. **Double-click `DonkeyKongOG.exe`** to play!

> ⚠️ **Note**: If no release is available yet, follow the "Build from Source" instructions below.

---

### 💻 Build from Source

#### Prerequisites
- **Windows OS** (7/8/10/11)
- **Visual Studio 2019+** with C++ Desktop Development workload
- **C++17** or higher

#### Option 1: Using Visual Studio (Recommended)

1. **Clone the repository**
   ```bash
   git clone https://github.com/Dan-Ofri/DonkeyKongOG.git
   cd DonkeyKongOG
   ```

2. **Open in Visual Studio**
   - Double-click `DonkeyKongOG.sln`
   - Or use command: `start DonkeyKongOG.sln`

3. **Build and Run**
   - Press `F5` or click **Start** (Debug mode)
   - Or press `Ctrl+F5` for Release mode
   - Or manually: `Build → Build Solution` then run the `.exe`

#### Option 2: Using Build Scripts (Easiest!)

**One-click build:**
```bash
# Just double-click build.bat or run:
build.bat
```

**One-click run:**
```bash
# Just double-click run.bat or run:
run.bat
```

The scripts will:
- ✅ Check for MSBuild automatically
- ✅ Build the project in Release mode
- ✅ Offer to run the game immediately
- ✅ Show clear error messages if something goes wrong

#### Option 3: Command Line (Advanced)

**Using MSBuild:**
```powershell
# Build the project
MSBuild DonkeyKongOG.sln /p:Configuration=Release /p:Platform=x64

# Run the game
.\x64\Release\DonkeyKongOG.exe
```

**Using g++ (MinGW/MSYS2):**
```bash
g++ -std=c++17 -o DonkeyKongOG.exe *.cpp -I.
./DonkeyKongOG.exe
```

**Using clang++:**
```bash
clang++ -std=c++17 -o DonkeyKongOG.exe *.cpp -I.
./DonkeyKongOG.exe
```

---

## 🎮 Gameplay

### Game Modes

#### 1️⃣ Regular Game
```bash
DonkeyKongOG.exe
```
- Classic arcade experience
- Choose level or start from beginning

#### 2️⃣ Save Game
```bash
DonkeyKongOG.exe -save
```
- Play and record every move
- Saves to `.steps` and `.result` files

#### 3️⃣ Load Game
```bash
DonkeyKongOG.exe -load
```
- Replay recorded games step-by-step
- Watch your previous gameplay

#### 4️⃣ Silent Mode
```bash
DonkeyKongOG.exe -load -silent
```
- Automated replay verification
- Validates recorded game integrity

### Main Menu
```
========================================
         DONKEY KONG - MAIN MENU
========================================
1. Start New Game
2. Start Specific Level
8. Instructions
9. Exit
========================================
```

---

## 🕹️ Controls

| Key | Action |
|-----|--------|
| **A** | Move Left |
| **D** | Move Right |
| **W** | Climb Up (on ladders) |
| **X** | Climb Down (on ladders) |
| **SPACE** | Stay in place |
| **ESC** | Pause game |

### Special Mechanics
- **Hammer** - Pick up `T` to gain temporary invincibility
- **Ladders** - Use `W/X` to climb `H` symbols
- **Objectives** - Reach `&` to complete the level

---

## 🏗️ Architecture

### Project Structure
```
DonkeyKongOG/
├── Core Game Logic
│   ├── game.h/cpp              # Base game orchestration
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
│   └── specialGhost.h/cpp      # Special ghost enemy
│
├── Game Systems
│   ├── board.h/cpp             # Level management
│   ├── gameConfig.h/cpp        # Constants & config
│   ├── point.h/cpp             # Position handling
│   ├── steps.h/cpp             # Move recording
│   └── results.h/cpp           # Game outcome tracking
│
└── Utilities
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

### Key Design Patterns

#### **Strategy Pattern** - Game Modes
```cpp
class Game {
protected:
    virtual void goToSleep() const = 0;
    virtual bool processGameInput(...) = 0;
    virtual void initializeGameData(...) = 0;
};

class RegularGame : public Game {
    void goToSleep() const override { Sleep(GAME_SPEED); }
    // ...
};
```

#### **Template Method** - Game Loop
```cpp
void Game::runGame(...) {
    // Template method with hooks for derived classes
    initializeGameData(...);
    while (running) {
        processGameInput(...);
        goToSleep();
        // ...
    }
}
```

#### **Polymorphism** - Enemy Behavior
```cpp
class Enemy {
public:
    virtual void move(Board& board) = 0;
    virtual char getChar() const = 0;
    virtual ~Enemy() {}
};
```

---

## 🧪 Testing

### Level Files
The game includes test levels:
- `dkong_01.screen` - Basic level layout
- `dkong_02.screen` - Intermediate difficulty
- `dkong_03.screen` - Advanced challenges

### Recording Format
**Steps File** (`.steps`):
```
<random_seed>
<move1> <move2> <move3> ...
```

**Results File** (`.result`):
```
<iteration> <result_type>
```

---

## 🛠️ Technologies

| Technology | Purpose |
|-----------|---------|
| **C++17** | Core language |
| **Visual Studio** | IDE & compiler |
| **STL** | Containers (vector, string) |
| **Windows Console API** | Terminal rendering |
| **File Streams** | Save/load functionality |

---

## 📚 Learning Outcomes

This project demonstrates proficiency in:

### Programming Concepts
- ✅ **Advanced OOP** - Inheritance, polymorphism, abstract classes
- ✅ **Memory Management** - RAII, smart pointers, destructors
- ✅ **File I/O** - Reading/writing game state
- ✅ **STL Mastery** - Vectors, algorithms, iterators

### Software Design
- ✅ **Design Patterns** - Strategy, Template Method
- ✅ **Code Reusability** - Base classes, virtual functions
- ✅ **Separation of Concerns** - Modular architecture
- ✅ **Error Handling** - Validation and error reporting

### Game Development
- ✅ **Game Loop** - Input, update, render cycle
- ✅ **Collision Detection** - Entity interactions
- ✅ **State Management** - Game modes and transitions
- ✅ **Replay System** - Deterministic gameplay recording

---

## 🚀 Future Enhancements

- [ ] **Graphics Mode** - SDL/SFML integration for sprites
- [ ] **Sound Effects** - Audio feedback for actions
- [ ] **Multiplayer** - Two-player competitive mode
- [ ] **Level Editor** - Create custom levels
- [ ] **AI Enemies** - Smarter ghost behavior
- [ ] **Leaderboard** - Online score tracking
- [ ] **Cross-platform** - Linux/Mac support

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## 👨‍💻 Author

**Dan Ofri**
- GitHub: [@Dan-Ofri](https://github.com/Dan-Ofri)
- Email: [ofridan@gmail.com](mailto:ofridan@gmail.com)
- Portfolio: [More Projects](https://github.com/Dan-Ofri?tab=repositories)

---

## 🙏 Acknowledgments

- **Course**: Object-Oriented Programming in C++
- **Academic Project**: Year 2, Semester A (2024/2025)
- **Original Game**: Donkey Kong by Nintendo (1981)
- **Inspiration**: Classic arcade gaming

---

## 📞 Contact & Support

Have questions or suggestions? Feel free to:
- 🐛 [Open an issue](https://github.com/Dan-Ofri/DonkeyKongOG/issues)
- 💬 [Start a discussion](https://github.com/Dan-Ofri/DonkeyKongOG/discussions)
- 📧 Email: [ofridan@gmail.com](mailto:ofridan@gmail.com)

---

<div align="center">

**⭐ If you enjoyed playing this, please give it a star!**

Made with ❤️ and C++

</div>

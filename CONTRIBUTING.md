# Contributing to Donkey Kong C++

Thank you for your interest in contributing to this project! 🎉

## How to Contribute

### 🐛 Reporting Bugs

If you find a bug, please open an issue with:
- Clear description of the problem
- Steps to reproduce
- Expected vs actual behavior
- Your environment (Windows version, Visual Studio version)
- Level file if applicable

### 💡 Suggesting Features

Feature requests are welcome! Please include:
- Clear use case
- Expected behavior
- Mockups or examples (if applicable)

### 🔧 Pull Requests

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Make your changes**
   - Follow existing code style
   - Add comments for complex logic
   - Test thoroughly
4. **Commit your changes**
   ```bash
   git commit -m "Add: amazing feature description"
   ```
5. **Push to your fork**
   ```bash
   git push origin feature/amazing-feature
   ```
6. **Open a Pull Request**

## Code Style Guidelines

### C++ Conventions
- **Naming**: camelCase for variables, PascalCase for classes
- **Indentation**: Tabs (Visual Studio default)
- **Braces**: K&R style (opening brace on same line)
- **Comments**: Use `//` for single line, `/* */` for blocks
- **Constants**: `constexpr` or `#define` in uppercase

### Example
```cpp
class Enemy {
private:
    Point position;
    char symbol;
    
public:
    // Constructor
    Enemy(int x, int y, char ch) : position(x, y), symbol(ch) {}
    
    // Pure virtual method
    virtual void move(Board& board) = 0;
    
    // Getter
    char getChar() const { return symbol; }
    
    // Virtual destructor
    virtual ~Enemy() {}
};
```

## Project Structure

```
DonkeyKongOG/
├── Core Logic      # Game orchestration classes
├── Entities        # Mario, enemies
├── Systems         # Board, config, utilities
└── Data Files      # Level files, recordings
```

## Testing

- Manual testing is currently used
- Test all game modes (Regular, Save, Load, Silent)
- Verify collision detection
- Check level progression
- Test save/load functionality

## Building

```bash
# Debug build
msbuild DonkeyKongOG.sln /p:Configuration=Debug

# Release build
msbuild DonkeyKongOG.sln /p:Configuration=Release
```

## Questions?

Feel free to open an issue or contact the maintainer directly at ofridan@gmail.com.

---

**Thank you for contributing!** 🙏

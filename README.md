# 🚫 SingleTapDetector - Prevent multiple rapid taps in Flutter

A lightweight Flutter widget that implements debounce protection to prevent users from accidentally triggering multiple actions. Perfect for navigation buttons, cards, and any interactive elements that should only respond once per user interaction.

## ✨ Features

• **Configurable debounce duration** (default: 1 second)
• **Auto-reset** after debounce period
• **Safe widget disposal** handling
• **Easy to integrate** - just wrap any widget
• **Production-ready** with comprehensive tests

## 🔧 Use Cases

• Navigation buttons
• Form submission buttons
• Card interactions
• Any critical user actions

## 📦 Installation

### Option 1: Using flutter pub add
```bash
flutter pub add single_tap_detector
```

### Option 2: Manual installation
Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  single_tap_detector: ^1.0.0
```

Then run:
```bash
flutter pub get
```

## 🚀 Quick Start

```dart
import 'package:single_tap_detector/single_tap_detector.dart';

SingleTapDetector(
  onTap: () {
    // Your navigation or action here
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => NextScreen(),
    ));
  },
  child: Card(
    child: ListTile(
      title: Text('Tap me!'),
    ),
  ),
)
```

## 🎯 Problem Solved

Have you ever experienced this issue?
- User taps a button/card multiple times quickly
- Multiple screens open in the navigation stack
- User has to press back button multiple times to return

**SingleTapDetector** solves this by preventing multiple rapid taps and ensuring only one action is executed.

## �� API Reference

### SingleTapDetector

A widget that prevents multiple rapid taps.

#### Properties

- `child` (Widget, required): The widget to wrap with tap protection
- `onTap` (VoidCallback, required): The callback to execute when tapped
- `debounceDuration` (Duration, optional): How long to block subsequent taps (default: 1 second)

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## ��‍💻 About Me

Hi, I'm **Krishna**! I'm a passionate Flutter developer who loves creating practical solutions for common development challenges. 

### 🛠️ What I Do
- **Flutter Development** - Building cross-platform mobile applications
- **Package Development** - Creating reusable Flutter packages for the community
- **Problem Solving** - Identifying and solving real-world development issues

### 🎯 Why SingleTapDetector?
This package was born from a real problem I encountered while developing Flutter apps. Multiple rapid taps causing navigation stack issues is a common frustration for both developers and users. I created this solution to make Flutter development smoother and user experience better.

### 🌟 My Approach
- **Simple & Effective** - Solutions that solve real problems
- **Well-Tested** - Production-ready code with comprehensive tests
- **Community-Focused** - Sharing knowledge and tools with fellow developers

### 📫 Get in Touch
- **GitHub**: [@krishna-gpu](https://github.com/krishna-gpu)
- **Package**: [single_tap_detector on pub.dev](https://pub.dev/packages/single_tap_detector)

---

**⭐ If this package helps you, please consider giving it a star!**

**🚀 Happy coding!**

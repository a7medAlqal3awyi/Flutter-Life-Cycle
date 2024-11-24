# Flutter Life Cycle Example 🚀

This is a Flutter project that demonstrates the various lifecycle methods in a `StatefulWidget` by creating a simple counter app with navigation to another screen. It showcases how Flutter handles different states and methods when the widget is created, updated, deactivated, disposed, etc. 🌱

## Features 🌟

- Demonstrates various Flutter lifecycle methods including:
  - `initState()` 🛠️
  - `didChangeDependencies()` 🔄
  - `build()` 🏗️
  - `deactivate()` ⛔
  - `dispose()` 🗑️
  - `reassemble()` 🔄 (Hot reload)

- Simple counter app with a floating action button to increment a counter ➕.
- Navigation to another screen and back to observe lifecycle changes 🔁.
- Logs lifecycle events to the console for easy debugging and learning 📝.

## Lifecycle Methods Explained 🧩

1. **`initState()`**: 
   - Called when the widget is inserted into the tree. Ideal for initializations. 🧰

2. **`didChangeDependencies()`**: 
   - Called when dependencies of this widget change (e.g., `InheritedWidget` updates). 🔄

3. **`build()`**: 
   - Rebuilds the widget's UI when state changes or when called explicitly. 🔨

4. **`deactivate()`**: 
   - Called when the widget is temporarily removed from the widget tree. ⛔

5. **`dispose()`**: 
   - Called when the widget is permanently removed from the tree. Use this to clean up resources. 🧹

6. **`reassemble()`**: 
   - Called during **hot reload** in development. 🔥

## Installation 🛠️

1. **Clone the repository**:
   ```bash
   git clone https://github.com/a7medAlqal3awyi/Flutter-Life-Cycle-.git

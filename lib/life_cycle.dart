import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  int count = 0;

  @override
  void initState() {
    // Called when the widget is inserted into the tree.
    super.initState();
    print("initState called: Widget is being created and inserted into the tree.");
  }

  @override
  void didChangeDependencies() {
    // Called when a dependency of this widget changes.
    super.didChangeDependencies();
    print("didChangeDependencies called: Dependencies have changed.");
  }

  @override
  Widget build(BuildContext context) {
    // Called every time the widget is rebuilt (on state changes, etc.).
    print("build called: ${DateTime.now()}");

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            // When the state changes, rebuild the widget and call the build method again.
            count++;
            print("setState called: State changed, widget rebuild triggered.");
          });
        },
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Life Cycle Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$count',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 40),
            InkWell(
              highlightColor: Colors.deepPurple,
              onTap: () {
                // Navigate to another screen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const AnotherScreen()),
                );
              },
              child: Text(
                'Navigate to another screen',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 40),
            InkWell(
              highlightColor: Colors.deepPurple,
              onTap: () {
                // Navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnotherScreen()),
                );
              },
              child: Text(
                'Navigate to another screen Without remove',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),

          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    // Called when this widget is removed from the widget tree.
    print("deactivate called: Widget is no longer part of the tree.");
    super.deactivate();
  }

  @override
  void dispose() {
    // Called when this widget is permanently removed from the tree.
    print("dispose called: Cleaning up resources before widget is destroyed.");
    super.dispose();
  }

  @override
  void reassemble() {
    // Called when the app is reassembled, such as during hot reload.
    print("reassemble called: App was hot reloaded.");
    super.reassemble();
  }
}

class AnotherScreen extends StatelessWidget {
  const AnotherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This is the second screen.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              // Pop the current screen from the navigation stack.
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Another Screen'),
      ),
      body: const Center(
        child: Text('This is another screen'),
      ),
    );
  }
}

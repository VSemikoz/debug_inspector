import 'package:debug_inspector/debug_inspector.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setDebugInspectorValues();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Builder(
          builder: (context) => IconButton(
            color: Colors.red,
            icon: const Icon(Icons.add),
            onPressed: () => showPerformanceSwitcher(context),
          ),
        ),
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(child: Text('Example')),
      ),
    );
  }
}

import 'package:debug_inspector/utils.dart';
import 'package:debug_inspector/widget.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setDebugInspectorValues();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  _showModal(BuildContext context) {
    showPerformanceSwitcher(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: Builder(
            builder: (context) => IconButton(
                  color: Colors.red,
                  icon: const Icon(Icons.add),
                  onPressed: () => _showModal(context),
                )),
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: const [
            Text('Running on:'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './theme/app_theme.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memorize Color',
      theme: AppTheme().lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Colors'),
          // backgroundColor: Colors.grey,
        ),
        body: const Center(
          child: Text('wip')
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, color: Colors.black54),
        ),
      ),
    );
  }
}

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

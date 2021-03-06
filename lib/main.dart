import 'package:flutter/material.dart';
import 'package:tutorial/logo.dart';
import './mixed_state_component_demo.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return const LayoutApp();
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: const Center(
          child: LogoApp(),
        ),
      ),
    );
  }
}

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

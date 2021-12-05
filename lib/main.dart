import 'package:flutter/material.dart';
import './theme/app_theme.dart';
import './organisms/palette.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final colors = [
    const Color(0xffffffff),
    const Color(0xffbc002d),
    const Color(0xffdfe3e2),
    const Color(0xff7b807a),
    const Color(0xff130f0c),
  ];

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
        body: ListView(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              Palette(title: 'Sample', colors: colors),
            ]),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder: (context) {
              return const AlertDialog(
                title: Text('Wip'),
              );
            });
          },
          child: const Icon(Icons.add, color: Colors.black54),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

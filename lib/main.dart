import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import './pages/top.dart';

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    title: 'Memorize Color',
    theme: AppTheme().lightTheme,
    home: TopPage(),
  ));
}

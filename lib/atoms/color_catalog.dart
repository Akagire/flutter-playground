import 'package:flutter/material.dart';

class ColorCatalog extends StatefulWidget {
  final bool selected;
  final Color color;

  const ColorCatalog({Key? key, this.selected = false, required this.color})
      : super(key: key);

  @override
  State<ColorCatalog> createState() => _ColorCatalogState();
}

class _ColorCatalogState extends State<ColorCatalog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
    );
  }
}

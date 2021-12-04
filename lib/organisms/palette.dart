import 'package:flutter/material.dart';

class Palette extends StatefulWidget {
  final String title;
  final List<Color> colors;

  const Palette({
    Key? key,
    this.title = '',
    required this.colors,
  }) : super(key: key);

  @override
  State<Palette> createState() => _PaletteState();
}

class _PaletteState extends State<Palette> {
  List<Widget> _paletteBuilder(List<Color> colors) {
    return colors.map((c) => Expanded(
        child: Container(color: c))
    ).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 0, left: 4, right: 4),
      child: Container(
        height: 100,
        child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16))),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: _paletteBuilder(widget.colors),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tutorial/atoms/color_catalog.dart';

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
  int _selectedIndex = -1;

  List<Widget> _paletteBuilder(List<Color> colors) {
    final List<Widget> builtColors = [];

    widget.colors.asMap().forEach((index, value) {
      final isSelected = index == _selectedIndex;
      builtColors.add(Expanded(
        flex: isSelected ? 2 : 1,
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: ColorCatalog(color: value, selected: isSelected),
        ),
      ));
    });

    return builtColors;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8, left: 32, right: 32),
      // TODO: タイトルの表示方法の検討
      child: Container(
        height: 80,
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

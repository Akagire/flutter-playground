import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  final bool selected;
  final Color color;

  const Catalogue({Key? key, this.selected = false, required this.color})
      : super(key: key);

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    return Container(color: widget.color);
  }
}

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
  int _selectedIndex = 3;

  List<Widget> _paletteBuilder(List<Color> colors) {
    final List<Widget> builtColors = [];

    widget.colors.asMap().forEach((index, value) {
      builtColors.add(Expanded(
        flex: index == _selectedIndex ? 2 : 1,
        child: GestureDetector(
          onTap: () {
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Catalogue(color: value),
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

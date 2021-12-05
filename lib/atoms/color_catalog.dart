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
      child: widget.selected
          ? Center(
              child: Text(
                _colorToHex6(widget.color),
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: _getTextColor(widget.color),
                ),
              ),
            )
          : null,
      color: widget.color,
    );
  }

  String _colorToHex6(Color color) {
    final colorStr = color.value.toRadixString(16).toString();
    final hexColor = colorStr.substring(2);
    return '#' + hexColor;
  }

  Color _getTextColor(Color primaryColor) {
    final whiteRatio =
        primaryColor.computeLuminance() / Colors.white.computeLuminance();
    final blackRatio =
        primaryColor.computeLuminance() / Colors.black54.computeLuminance();

    // NOTE: https://www.w3.org/WAI/WCAG21/quickref/?versions=2.0#qr-visual-audio-contrast-contrast
    if (whiteRatio > 4.5) return Colors.white;
    if (whiteRatio < 0.22) return Colors.white;

    if (blackRatio > 4.5) return Colors.black54;
    if (blackRatio > 0.22) return Colors.black54;
    return Colors.white;
  }
}

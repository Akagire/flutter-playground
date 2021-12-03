import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({Key? key}): super(key: key);

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)
              ),
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            color: Colors.red[500],
            onPressed: _toggleFavorite
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout Demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection(),
            buttonSection(context),
            textSection(),
          ]
        ),
      ),
    );
  }

  Widget titleSection() {
   return Container(
     padding: const EdgeInsets.all(32),
     child: Row(
       children: [
         Expanded(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 padding: const EdgeInsets.only(bottom: 8),
                 child: const Text(
                   'オエシネン湖キャンプ場',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
               Text(
                 'スイス, カンダーシュテーク',
                 style: TextStyle(
                   color: Colors.grey[500],
                 ),
               ),
             ],
           ),
         ),
         const FavoriteWidget(),
       ],
     ),
   );
  }

  Widget buttonSection(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, '電話'),
        _buildButtonColumn(color, Icons.near_me, 'ルート'),
        _buildButtonColumn(color, Icons.share, '共有'),
      ],
    );
  }

  Widget textSection() {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'オエシネン湖は、ベルン・アルプスのブルームリサルプの麓、海抜1,578mにあり、'
        'アルプスに点在するの湖の中でも最大級。'
        'カンデルシュテッグからゴンドラに乗り、牧草地や松林の中を30分ほど歩くと、'
        '湖にたどり着きます。夏の日中の気温は気温20℃と快適で、ボートを漕いだり、'
        '小さな木製のソリ「トボガン」に乗ったりといったアクティビティが楽しめます。',
        softWrap: true
      ),
    );
  }

  Widget _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

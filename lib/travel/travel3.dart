import 'package:flutter/material.dart';

class Travel3 extends StatefulWidget {
  @override
  _Travel3State createState() => _Travel3State();
}

class _Travel3State extends State<Travel3> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    '| วัดพระธาตุเขาน้อย',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'น่าน',
                  style: TextStyle(
                    color: Colors.grey[800],fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          FavoriteWidget(),
        ],
      ),
    );

    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        backgroundColor: Colors.amber.shade50,
      ),
      body: Column(
        children: [
          Image.asset(
            'images/tra3.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          Text('--------------------------------------------------------------'),
          textSection,
          Container(
            child: ElevatedButton.icon(
              label: Text('back'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
              ),
              icon: Icon(Icons.navigate_before),
              onPressed: () {
                Navigator.pushNamed(context, '/travel');
              },
            ),
          ),
        ],
      ),
    ));
  }
}

Widget textSection = Container(
  padding: const EdgeInsets.all(20),
  child: Text(
    'สำหรับวันนี้เราจะพาไปชมวิวที่สวยที่สุดของจังหวัดน่าน พร้อมนมัสการองค์พระใหญ่คู่บ้านคู่เมืองน่าน'
    ' ที่ “วัดพระธาตุเขาน้อย” วัดพระธาตุเขาน้อยตั้งอยู่ใน ตำบลไชยสถาน '
    'องค์พระธาตุตั้งอยู่บนยอดดอยเขาน้อยซึ่งอยู่ด้านตะวันตกของตัวเมืองน่านซึ่งสูงจากระดับน้ำทะเลประมาณ 240 ม. ค่ะ '
    'สันนิษฐานว่ามีอายุรุ่นราวคราวเดียวกับพระธาตุแช่แห้ง ที่นี่เป็นจุดชมวิวเมืองน่านที่สวยงามแบบ 360 องศา',
    softWrap: true,
    style: TextStyle(color: Colors.black, fontSize: 18),
  ),
);

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 55;
  // ···
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

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            padding: EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}

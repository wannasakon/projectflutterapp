import 'package:flutter/material.dart';

class Travel1 extends StatefulWidget {
  @override
  _Travel1State createState() => _Travel1State();
}

class _Travel1State extends State<Travel1> {
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
                    '| วัดพระแก้ว',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'กรุงเทพมหานคร',
                  style: TextStyle(
                    color: Colors.grey[800],fontSize: 15
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
            'images/tra1.jpg',
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

// Color color = Theme.of(context).primaryColor;

// Widget buttonSection = Container(
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       _buildButtonColumn(color, Icons.call, 'CALL'),
//       _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
//       _buildButtonColumn(color, Icons.share, 'SHARE'),
//     ],
//   ),
// );

Widget textSection = Container(
  padding: const EdgeInsets.all(20),
  child: Text(
    'วัดคู่บ้านคู่เมืองของประเทศไทย และกรุงรัตนโกสินทร์ '
    'ก็คือที่นี่ค่ะ วัดพระศรีรัตนศาสดาราม หรือ วัดพระเเก้ว เป็นวัดในพระบรมมหาราชวังเช่นเดียวกับวัดพระศรีสรรเพชญ์' 
    'ซึ่งเป็นวัดในพระราชวังหลวงในสมัยอยุธยา',
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

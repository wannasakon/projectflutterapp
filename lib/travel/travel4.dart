import 'package:flutter/material.dart';

class Travel4 extends StatefulWidget {
  @override
  _Travel4State createState() => _Travel4State();
}

class _Travel4State extends State<Travel4> {
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
                    '| ทองผาภูมิ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'กาญจนบุรี',
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
            'images/tra4.jpg',
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
    'อำเภอทองผาภูมิ จังหวัดกาญจนบุรี หนึ่งในที่เที่ยวที่สุดของนักท่องเที่ยวสายผจญภัย'
    'ให้ทุกคนได้มาใกล้ชิดธรรมชาติ และชมความงดงามแห่งขุนเขา ทองผาภูมิ มีที่เที่ยวมากมาย '
    'ทั้ง อุทยานแห่งชาติท่องผาภูมิ เหมืองปิล๊อก เขื่อนเขาแหลม น้ำตกผาตาด '
    'รวมถึง เขาช้างเผือก ที่โด่งดัง ที่หลายคนแค่ได้ไปยืนสูดอากาศดีๆ อยู่บนยอดเขาก็ฟินสุดๆ แล้ว '
    'แม้จะต้องจองคิวเข้าอุทยานฯ กันข้ามเดือนข้ามปีก็ตาม',
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

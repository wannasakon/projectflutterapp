import 'package:flutter/material.dart';

class Travel2 extends StatefulWidget {
  @override
  _Travel2State createState() => _Travel2State();
}

class _Travel2State extends State<Travel2> {
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
                    '| เพลาเพลิน',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Text(
                  'บุรีรัมย์',
                  style: TextStyle(color: Colors.grey[800], fontSize: 15),
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
            'images/tra2.jpg',
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
  padding: const EdgeInsets.all(5),
  child: Text(
    'หลายคนอาจจะไม่เชื่อเพราะติดภาพความแห้งแล้งของอีสานเข้าไป ก็ไว้จนคิดว่าอีสานต้องร้อนและแล้งสุดๆ'
    'แต่ขอบอกว่า เดี๋ยวนี้เขาพัฒนาแล้ว ! ใครจะไปเชื่อว่าอีสานใต้ จะมีเที่ยวชมดอกไม้เมืองหนาว แต่ก็มีอยู่จริงๆ'
    'ที่ เพลาเพลิน บุรีรัมย์ ค่ะ ที่นี่หลักๆ แล้วสร้างขึ้นเพื่อเป็นสถานที่เพื่อพัฒนาผู้เรียนนอกห้องเรียนสำหรับเยาวชน'
    'และบุคคลทั่วไป นอกจากนี้อุทยานไม้ดอกเพลาเพลินก็จะมีเรือนจัดแสดงพืชพันธุ์นานาชนิดอีกด้วย',
    softWrap: true,
    style: TextStyle(color: Colors.black, fontSize: 18,),
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

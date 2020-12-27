import 'package:flutter/material.dart';

class Travel5 extends StatefulWidget {
  @override
  _Travel5State createState() => _Travel5State();
}

class _Travel5State extends State<Travel5> {
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
                    '| ทุ่งดอกบัวตอง',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 20,
                    ),
                  ),
                ),
                Text(
                  'แม่ฮ่องสอน',
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
            'images/tra5.jpg',
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
    'ทุ่งดอกบัวตอง ดอยแม่อูคอนั้นอยู่ที่อำเภอขุนยวม จังหวัดแม่ฮ่องสอน มีพื้นที่กว่า 500 ไร่ รายล้อมด้วยทัศนียภาพของหุบเขาสลับซับซ้อน แต่ก่อนจะขึ้นไปถึงนั้นย่อมต้องมีอุปสรรคบ้างพอหอมปากหอมคอ ด้วยการผ่านโค้ง 1,864 โค้งเลยทีเดียว แต่บอกได้เลยว่า คุ้มค่า !',
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

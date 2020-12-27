import 'package:flutter/material.dart';

class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

Widget about() {
  return IconButton(
      icon: Icon(Icons.info),
      onPressed: () {
        print('You click info');
      });
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade100,
        appBar: AppBar(
          backgroundColor: Colors.amber.shade100,
          actions: <Widget>[about()],
        ),
        body: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/flat.jpg',
                  width: 800,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 5,
                ),
                // Row(
                //   children: <Widget>[
                //     Expanded(
                //       child: Container(
                //         height: 225,
                //         color: Colors.red,
                //       ),
                //     ),
                //     Expanded(
                //       child: Container(
                //         height: 225,
                //         color: Colors.green,
                //       ),
                //     ),
                //   ],
                // ),

                Container(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    height: MediaQuery.of(context).size.height * 0.50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Card(
                            color: Colors.grey.shade200,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            elevation: 8,
                            child: Container(
                              child: Image.asset(
                                'images/tra1.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                
                Text('-------------------------------------------------------'),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    color: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: Container(
                      child: Image.asset(
                        'images/tra1.jpg',
                        fit: BoxFit.contain,
                      ),
                      //Image.asset('images/destination.png'),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  label: Text(' วัดพระแก้ว'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/travel1');
                    print('You click วัดพระแก้ว');
                  },
                ),

                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    color: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: Container(
                      child: Image.asset(
                        'images/tra2.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  label: Text(' พลาเพลิน'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/travel2');
                    print('You click พลาเพลิน');
                  },
                ),

                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    color: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: Container(
                      child: Image.asset(
                        'images/tra3.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  label: Text(' วัดพระธาตุเขาน้อย'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/travel3');
                    print('You click วัดพระธาตุเขาน้อย');
                  },
                ),

                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    color: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: Container(
                      child: Image.asset(
                        'images/tra4.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  label: Text('ทองผาภูมิ'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/travel4');
                    print('You click ทองผาภูมิ');
                  },
                ),

                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Card(
                    color: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 8,
                    child: Container(
                      child: Image.asset(
                        'images/tra5.jpg',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  label: Text(' ทุ่งดอกบัวตอง'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                  ),
                  icon: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/travel5');
                    print('You click ทุ่งดอกบัวตอง');
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

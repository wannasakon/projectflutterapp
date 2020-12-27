import 'package:flutter/material.dart';
import 'package:projectflutter/login.dart';
import 'package:projectflutter/travel.dart';
import 'package:projectflutter/travel/travel1.dart';
import 'package:projectflutter/travel/travel2.dart';
import 'package:projectflutter/travel/travel3.dart';
import 'package:projectflutter/travel/travel4.dart';
import 'package:projectflutter/travel/travel5.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
      initialRoute: '/',
      routes: {
        // '/': (context) => FirstScreen(),
        '/travel': (context) => Travel(),
        '/travel1': (context) => Travel1(),
        '/travel2': (context) => Travel2(),
        '/travel3': (context) => Travel3(),
        '/travel4': (context) => Travel4(),
        '/travel5': (context) => Travel5(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      backgroundColor: Colors.deepOrange.shade100,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/destination.png',
              width: 520,
              height: 240,
              // fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),

            Text('Travel',
                style: TextStyle(
                    color: Colors.black, fontSize: 28, fontFamily: 'Mali')),
            Text('ยินดีตอนรับเข้าสู่ โลกของการท่องเที่ยว',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Mali',
                  fontSize: 18,
                )),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                child: Text('เข้าสู่ระบบ',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
                    color: Colors.deepOrangeAccent.shade100,
                onPressed: () {
                  print('You click it');
                  MaterialPageRoute materialPageRoute = MaterialPageRoute(
                      builder: (BuildContext context) => Travel());
                  Navigator.of(context).push(materialPageRoute);
                })

            // GestureDetector(
            //     // child: Text(
            //     //   'เข้าสู่ระบบ',
            //     // ),
            //     child: Container(
            //       padding: EdgeInsets.all(10.0),
            //       decoration: BoxDecoration(
                    // border: Border.all(width: 1.0, color: Colors.grey),
            //         borderRadius: BorderRadius.circular(10.0),
            //       ),
            //       child: Text(
            //         'เข้าสู่ระบบ',
            //         style: TextStyle(color: Colors.black),
            //       ),
            //     )
            //     )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// class Login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Route"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }

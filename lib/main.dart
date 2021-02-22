import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  static final Color color1 = const Color(0xfff4f1de);
  static final Color color2 = const Color(0xff0b090a);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Let\'s listent to music!',
      home: Scaffold(
        appBar: AppBar(
           title: Text('Music', 
           style: TextStyle(fontSize: 25.0, fontFamily: ,),
        ),
        
      ),), 
    );
  }
}

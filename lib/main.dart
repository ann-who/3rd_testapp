import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static final Color color1 = const Color(0xfff4f1de);
  static final Color color2 = const Color(0xff0b090a);
  static final Color color3 = const Color(0xffba181b);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: color2,
        scaffoldBackgroundColor: color2,
        fontFamily: 'Fira Sans',
        brightness: Brightness.dark,
        textTheme: TextTheme(
          button: TextStyle(color: color1),
          bodyText1: TextStyle(color: color1),
          bodyText2: TextStyle(color: color1),
        ),
      ),
      title: 'Let\'s listen to music!',
      home: Scaffold(
        appBar: AppBar(
          title: Card(
            color: color2,
            margin: EdgeInsets.only(left: 15.0),
            //  <Widget> [
            child: ListTile(
              leading: Icon(
                Icons.music_note,
                color: color3,
              ),
              title: Text(
                'Music',
                style: TextStyle(
                    fontSize: 25.0, color: color1, fontFamily: 'League'),
              ),
            ),
            // ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Column(
            children: [
              Text(
                'Choose your mood',
                style: TextStyle(
                  color: color1,
                  fontSize: 15.0,
                ),
                textAlign: TextAlign.left,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        child: Text(
                          'Workout',
                          style: TextStyle(color: color1),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Relax',
                          style: TextStyle(color: color1),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        child: Text(
                          'Party',
                          style: TextStyle(color: color1),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        onPressed: null,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        child: Text(
                          'Romance',
                          style: TextStyle(color: color1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Your favorites',
                    style: TextStyle(
                        color: color1, fontSize: 25.0, fontFamily: 'League'),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: color2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cover1.jpg',
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: color2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cover2.png',
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: color2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cover3.jpg',
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: color2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cover4.png',
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Mixed for you',
                    style: TextStyle(
                        color: color1, fontSize: 25.0, fontFamily: 'League'),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: color2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cover6.png',
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: color2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cover7.jpg',
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Listen again',
                    style: TextStyle(
                        color: color1, fontSize: 25.0, fontFamily: 'League'),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: color2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cover8.jpg',
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: color2,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/cover9.png',
                          fit: BoxFit.cover,
                          width: 200.0,
                          height: 200.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

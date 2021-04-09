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
  static final Color colorWhite = const Color(0xfff4f1de);
  static final Color colorBlack = const Color(0xff0b090a);
  static final Color colorRed = const Color(0xffba181b);
  static final Color colorGray = const Color(0xff212529);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: colorBlack,
        scaffoldBackgroundColor: colorBlack,
        fontFamily: 'Fira Sans',
        brightness: Brightness.dark,
        textTheme: TextTheme(
          button: TextStyle(color: colorWhite),
          bodyText1: TextStyle(color: colorWhite),
          bodyText2: TextStyle(color: colorWhite),
        ),
      ),
      title: 'Let\'s listen to music!',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.play_circle_outline,
            color: colorRed,
          ),
          title: Text(
            'Music',
            style: TextStyle(
              fontSize: 30.0,
              color: colorWhite,
              fontFamily: 'League',
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: colorWhite),
              onPressed: () {
                print('Searching ...');
              },
            ),
            IconButton(
              icon: Icon(Icons.music_video, color: colorWhite),
              onPressed: () {
                print('Enjoy watching!');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.only(bottom: 5.0),
          child: Column(
            children: [
              Text(
                'Choose your mood',
                style: TextStyle(
                  color: colorWhite,
                  fontSize: 17.0,
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
                        onPressed: () {
                          print('Tapped!');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        child: Text(
                          'Workout',
                          style: TextStyle(color: colorWhite),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        onPressed: () {
                          print('Tapped!');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Relax',
                          style: TextStyle(color: colorWhite),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        onPressed: () {
                          print('Tapped!');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        child: Text(
                          'Party',
                          style: TextStyle(color: colorWhite),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 10.0),
                      child: OutlineButton(
                        onPressed: () {
                          print('Tapped!');
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        child: Text(
                          'Romance',
                          style: TextStyle(color: colorWhite),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
                  child: Text(
                    'Your favorites',
                    style: TextStyle(
                        color: colorWhite,
                        fontSize: 25.0,
                        fontFamily: 'League'),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: colorBlack,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/cover1.jpg',
                              fit: BoxFit.cover,
                              width: 150.0,
                              height: 150.0,
                            ),
                          ),
                          Container(
                            child: Text(
                              'I wanna be yours',
                              style:
                                  TextStyle(color: colorWhite, fontSize: 15.0),
                              textAlign: TextAlign.left,
                            ),
                            margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                          ),
                          Container(
                            child: Text(
                              'Arctic Monkeys',
                              style:
                                  TextStyle(color: colorWhite, fontSize: 10.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 10.0, right: 10.0),
                      color: colorBlack,
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
                      color: colorBlack,
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
                      color: colorBlack,
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
                  margin: EdgeInsets.only(top: 15.0, left: 15.0, bottom: 10.0),
                  child: Text(
                    'Mixed for you',
                    style: TextStyle(
                        color: colorWhite,
                        fontSize: 25.0,
                        fontFamily: 'League'),
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
                      color: colorBlack,
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
                      color: colorBlack,
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
                  margin: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Text(
                    'Listen again',
                    style: TextStyle(color: colorWhite, fontSize: 15.0),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
                  child: Text(
                    'Your daily music',
                    style: TextStyle(
                        color: colorWhite,
                        fontSize: 25.0,
                        fontFamily: 'League'),
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
                      color: colorBlack,
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
                      color: colorBlack,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Text(
                    'Start radio based on a song',
                    style: TextStyle(color: colorWhite, fontSize: 15.0),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
                  child: Text(
                    'Quick picks',
                    style: TextStyle(
                        color: colorWhite,
                        fontSize: 25.0,
                        fontFamily: 'League'),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Card(
                    color: colorGray,
                    child: InkWell(
                      splashColor: colorBlack,
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              leading: Image.asset(
                                'assets/images/cover7.jpg',
                                fit: BoxFit.cover,
                                width: 50.0,
                                height: 50.0,
                              ),
                              title: Text('Yamakasi'),
                              subtitle: Text('Miyagi & Andy Panda'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: colorGray,
                    child: InkWell(
                      splashColor: colorBlack,
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: ListTile(
                              leading: Image.asset(
                                'assets/images/cover1.jpg',
                                fit: BoxFit.cover,
                                width: 50.0,
                                height: 50.0,
                              ),
                              title: Text('505'),
                              subtitle: Text('Arctic Monkeys'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            children: [
              Spacer(),
              IconButton(
                icon: Icon(Icons.home),
                color: colorWhite,
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.explore),
                color: colorWhite,
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.library_music),
                color: colorWhite,
                onPressed: () {},
              ),
              Spacer(),
            ],
          ),
          color: colorGray,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_app_3/album_cover.dart';
import 'package:my_app_3/quick_pick.dart';
import 'package:my_app_3/tag_button.dart';
import 'package:my_app_3/AppColor.dart';
import 'package:my_app_3/text_style.dart';
import 'package:my_app_3/bottomAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: AppColor.colorBlack,
        scaffoldBackgroundColor: AppColor.colorBlack,
        fontFamily: 'Fira Sans',
        brightness: Brightness.dark,
        textTheme: TextTheme(
          button: TextStyle(color: AppColor.colorWhite),
          // headline3: TextStyle(
          //     color: AppColor.colorWhite, fontSize: 25.0, fontFamily: 'League'),
          // bodyText1: TextStyle(color: AppColor.colorWhite),
          // bodyText2: TextStyle(color: AppColor.colorWhite),
        ),
      ),
      title: 'Let\'s listen to music!',
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.play_circle_outline,
            color: AppColor.colorRed,
          ),
          title: Text(
            'Music',
            style: TextStyle(
              fontSize: 30.0,
              color: AppColor.colorWhite,
              fontFamily: 'League',
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: AppColor.colorWhite),
              onPressed: () {
                print('Searching ...');
              },
            ),
            IconButton(
              icon: Icon(Icons.music_video, color: AppColor.colorWhite),
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
                  color: AppColor.colorWhite,
                  fontSize: 17.0,
                ),
                textAlign: TextAlign.left,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                child: Row(
                  children: [
                    TagButton(textButton: 'Workout'),
                    TagButton(textButton: 'Relax'),
                    TagButton(textButton: 'Party'),
                    TagButton(textButton: 'Romance'),
                  ],
                ),
              ),
              FancyText(text: 'Your favorites'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AlbumCover(imagePath: 'assets/images/cover1.jpg'),
                    AlbumCover(imagePath: 'assets/images/cover2.png'),
                    AlbumCover(imagePath: 'assets/images/cover3.jpg'),
                    AlbumCover(imagePath: 'assets/images/cover4.png'),
                  ],
                ),
              ),
              FancyText(text: 'Mixed for you'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AlbumCover(imagePath: 'assets/images/cover6.png'),
                    AlbumCover(imagePath: 'assets/images/cover7.jpg'),
                  ],
                ),
              ),
              SimpleText(text: 'Listen again'),
              FancyText(text: 'Your daily music'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AlbumCover(imagePath: 'assets/images/cover8.jpg'),
                    AlbumCover(imagePath: 'assets/images/cover9.png'),
                  ],
                ),
              ),
              SimpleText(text: 'Start radio based on a song'),
              FancyText(text: 'Quick picks'),
              Column(
                children: [
                  QuickPick(
                      imagePath: 'assets/images/cover7.jpg',
                      textTitle: 'Yamakasi',
                      textSubtitle: 'Miyagi & Andy Panda'),
                  QuickPick(
                      imagePath: 'assets/images/cover1.jpg',
                      textTitle: '505',
                      textSubtitle: 'Arctic Monkeys'),
                  QuickPick(
                      imagePath: 'assets/images/cover2.png',
                      textTitle: 'Give me love',
                      textSubtitle: 'Joji'),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomAppBar(),
      ),
    );
  }
}

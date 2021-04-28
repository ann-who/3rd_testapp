import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'app_color.dart';
//import 'package:my_app_3/main.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore new tracks!',
          style: TextStyle(
            fontSize: 30.0,
            color: AppColor.colorWhite,
            fontFamily: 'League',
          ),
        ),
      ),
      body: Center(
        child: OutlineButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}

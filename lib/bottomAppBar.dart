import 'package:flutter/material.dart';
import 'package:my_app_3/AppColor.dart';

class MyBottomAppBar extends Container {
  MyBottomAppBar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            color: AppColor.colorWhite,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.explore),
            color: AppColor.colorWhite,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.library_music),
            color: AppColor.colorWhite,
            onPressed: () {},
          ),
        ],
      ),
      color: AppColor.colorGray,
    );
  }
}

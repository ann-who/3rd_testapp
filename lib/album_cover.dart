import 'package:flutter/material.dart';
import 'package:my_app_3/AppColor.dart';

//ignore: must_be_immutable
class AlbumCover extends GestureDetector {
  String _imagePath;

  AlbumCover({@required String imagePath}) {
    _imagePath = imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Album cover tapped.');
      },
      child: Card(
        margin:
            EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
        color: AppColor.colorBlack,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                _imagePath,
                fit: BoxFit.cover,
                width: 200.0,
                height: 200.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

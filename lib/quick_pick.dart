import 'package:flutter/material.dart';
import 'package:my_app_3/AppColor.dart';

//ignore: must_be_immutable
class QuickPick extends Card {
  String _imagePath;
  String _textTitle;
  String _textSubtitle;

  QuickPick(
      {@required String imagePath,
      @required String textTitle,
      @required String textSubtitle}) {
    _imagePath = imagePath;
    _textTitle = textTitle;
    _textSubtitle = textSubtitle;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
      color: AppColor.colorGray,
      child: InkWell(
        splashColor: AppColor.colorBlack,
        onTap: () {
          print('Card tapped.');
        },
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Image.asset(
                  _imagePath,
                  fit: BoxFit.cover,
                  width: 50.0,
                  height: 50.0,
                ),
                title: Text(_textTitle),
                subtitle: Text(_textSubtitle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

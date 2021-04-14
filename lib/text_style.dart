import 'package:flutter/material.dart';
import 'package:my_app_3/AppColor.dart';

//ignore: must_be_immutable
class FancyText extends Container {
  String _text;

  FancyText({@required String text}) {
    _text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(left: 15.0, bottom: 10.0, top: 0.0),
          child: Text(
            _text,
            style: TextStyle(
                color: AppColor.colorWhite,
                fontSize: 25.0,
                fontFamily: 'League'),
          ),
        ),
      ),
    );
  }
}

//ignore: must_be_immutable
class SimpleText extends Container {
  String _text;

  SimpleText({@required String text}) {
    _text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          margin: EdgeInsets.only(left: 15.0, bottom: 0.0, top: 10.0),
          child: Text(
            _text,
            style: TextStyle(color: AppColor.colorWhite, fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}

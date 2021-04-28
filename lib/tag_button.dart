import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app_3/app_color.dart';

//ignore: must_be_immutable
class TagButton extends Container {
  String _textButton;
  String _textConsole;

  TagButton({@required String textButton, String textConsole}) {
    _textButton = textButton;
    if (textConsole == null) {
      _textConsole = _textButton + ' tapped!';
    } else {
      _textConsole = textConsole;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: OutlineButton(
        onPressed: () {
          print(_textConsole);
          Navigator.pushNamed(context, '/second');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28.0),
        ),
        child: Text(
          _textButton,
          style: TextStyle(color: AppColor.colorWhite),
        ),
      ),
    );
  }
}

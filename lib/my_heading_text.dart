import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyHeadingText extends StatelessWidget {
  final String myText;

  TextStyle? myTextStyle;

  // ignore: use_key_in_widget_constructors
  MyHeadingText(this.myText, this.myTextStyle);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Text(
      myText,
      style: myTextStyle,
    );
  }
}

// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:first_app/my_final_button.dart';
import 'package:first_app/main.dart';
import 'package:first_app/my_heading_text.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  final String myButtonText;
  final String myHeadingText;
  final int myButtonHeadingId;
  final int currentHeadingId;

  MyButton(
    this.myButtonText,
    this.myHeadingText,
    this.myButtonHeadingId,
    this.currentHeadingId,
  );

  TextStyle? myTextStyle;

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    if (currentHeadingId == myButtonHeadingId) {
      return MyFinalButton(
        null,
        myButtonText,
      );
    } else {
      switch (myButtonHeadingId) {
        case 1:
          {
            myTextStyle = Theme.of(context).textTheme.headline1;
            break;
          }
        case 2:
          {
            myTextStyle = Theme.of(context).textTheme.headline2;
            break;
          }
        case 3:
          {
            myTextStyle = Theme.of(context).textTheme.headline3;
            break;
          }
      }
      return MyFinalButton(
        () {
          myFirstAppState.setMyText(MyHeadingText(
            myHeadingText,
            myTextStyle,
          ));
          myFirstAppState.setCurrentHeadingId(
            myButtonHeadingId,
          );
        },
        myButtonText,
      );
    }
  }
}

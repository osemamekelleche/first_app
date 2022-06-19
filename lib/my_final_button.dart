import 'package:flutter/material.dart';
import './my_button_text.dart';

// ignore: must_be_immutable
class MyFinalButton extends StatelessWidget {
  dynamic myButtonOnPressedEvent;
  String myButtonText;
  // ignore: use_key_in_widget_constructors
  MyFinalButton(
    this.myButtonOnPressedEvent,
    this.myButtonText,
  );

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return ElevatedButton(
      onPressed: myButtonOnPressedEvent,
      child: MyButtonText(
        myButtonText,
      ),
    );
  }
}

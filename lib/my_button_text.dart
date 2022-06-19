import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyButtonText extends StatelessWidget {
  final String myText;

  // ignore: use_key_in_widget_constructors
  const MyButtonText(this.myText);

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return SizedBox(
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            width: 50,
            child: Icon(
              Icons.add,
            ),
          ),
          SizedBox(
            width: 150,
            child: Text(
              myText,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

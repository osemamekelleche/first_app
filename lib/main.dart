import 'package:first_app/my_button.dart';
import 'package:first_app/my_heading_text.dart';
import 'package:flutter/material.dart';

MyFirstAppState myFirstAppState = MyFirstAppState();

void main() {
  runApp(const MyFirstApp());
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<MyFirstApp> createState() => myFirstAppState;
}

class MyFirstAppState extends State<MyFirstApp> {
  MyHeadingText _myHeadingText = MyHeadingText(
    'None',
    const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );

  int _currentHeadingId = 0;

  void setCurrentHeadingId(int headingId) {
    setState(() {
      _currentHeadingId = headingId;
    });
  }

  void setMyText(MyHeadingText myText) {
    setState(() {
      _myHeadingText = myText;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My First App',
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 80,
              ),
              SizedBox(
                height: 200,
                child: _myHeadingText,
              ),
              const SizedBox(
                height: 50,
              ),
              MyButton(
                'Heading 1',
                'H1',
                1,
                _currentHeadingId,
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                'Heading 2',
                'H2',
                2,
                _currentHeadingId,
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                'Heading 3',
                'H3',
                3,
                _currentHeadingId,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

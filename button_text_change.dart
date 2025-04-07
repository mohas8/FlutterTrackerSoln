import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ButtonTextChange(),
    );
  }
}

class ButtonTextChange extends StatefulWidget {
  @override
  _ButtonTextChangeState createState() => _ButtonTextChangeState();
}

class _ButtonTextChangeState extends State<ButtonTextChange> {
  String displayText = "Press the button";

  void changeText() {
    setState(() {
      displayText = "Button Pressed";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Text")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(displayText),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: changeText,
              child: Text("Press Me"),
            ),
          ],
        ),
      ),
    );
  }
}

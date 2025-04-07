import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextStylesPage(),
    );
  }
}

class TextStylesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Styles")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Large Bold Red", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red)),
            Text("Medium Green", style: TextStyle(fontSize: 18, color: Colors.green)),
            Text("Small Italic Blue", style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}

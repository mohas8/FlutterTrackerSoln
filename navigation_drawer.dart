import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  void _navigate(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Navigation")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu")),
            ListTile(
              title: Text("Screen One"),
              onTap: () => _navigate(context, Screen(title: "Screen One")),
            ),
            ListTile(
              title: Text("Screen Two"),
              onTap: () => _navigate(context, Screen(title: "Screen Two")),
            ),
            ListTile(
              title: Text("Screen Three"),
              onTap: () => _navigate(context, Screen(title: "Screen Three")),
            ),
          ],
        ),
      ),
      body: Center(child: Text("Home Page")),
    );
  }
}

class Screen extends StatelessWidget {
  final String title;
  Screen({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text("This is $title")),
    );
  }
}

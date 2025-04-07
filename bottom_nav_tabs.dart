import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNavApp());
  }
}

class BottomNavApp extends StatefulWidget {
  @override
  _BottomNavAppState createState() => _BottomNavAppState();
}

class _BottomNavAppState extends State<BottomNavApp> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Home Content")),
    Center(child: Icon(Icons.search, size: 100)),
    Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Icon(Icons.person, size: 80), Text("Profile")],
    )),
  ];

  void _onTap(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

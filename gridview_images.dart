import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GridImages());
  }
}

class GridImages extends StatelessWidget {
  final List<String> imageUrls = List.generate(
    12,
    (index) => 'https://via.placeholder.com/150?text=Image+${index + 1}',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Images")),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return Image.network(imageUrls[index], fit: BoxFit.cover);
          },
        ),
      ),
    );
  }
}

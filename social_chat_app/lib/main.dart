import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Column(
          children: [
            Text('Hello, Welcome back!'),
            Text('Login to continue'),
          ],
        ),
      ),
    );
  }
}

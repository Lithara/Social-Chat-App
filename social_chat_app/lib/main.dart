import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[900],
        body: Column(
          children: [
            Text('Hello, Welcome back!'),
            Text('Login to continue'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            TextButton(
              onPressed: () {
                print('Forgot is clicked');
              },
              child: Text('Forgot Password?'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Login is clicked');
              },
              child: Text('Login'),
            ),
            Text('or Sign in with'),
          ],
        ),
      ),
    );
  }
}

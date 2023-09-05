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
            ElevatedButton(
              onPressed: () {
                print('Google is clicked');
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    width: 20,
                    height: 20,
                  ),
                  Text('Login with Google'),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Facebook is clicked');
              },
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/facebook.png',
                    width: 20,
                    height: 20,
                  ),
                  Text('Login with Facebook'),
                ],
              ),
            ),
            Row(
              children: [
                Text("Don't have an account? "),
                TextButton(
                  onPressed: () {
                    print('Sign up is clicked');
                  },
                  child: Text('Sign up'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          Text(
            'Hello, Welcome back!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Login to continue',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
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
    );
  }
}

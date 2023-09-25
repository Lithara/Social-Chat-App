import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {

  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: 
        Text(
          'This is counter: $counter',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white
          )
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(
          Icons.add,
        ),
      )
    );
  }
}
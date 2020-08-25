import 'package:flutter/material.dart';

class HelloView extends StatefulWidget {
  @override
  _HelloViewState createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloView> {
  double height = 400;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
        onPressed: () {
          setState(() {
            height = height == 100 ? 400 : 100;
          });
        },
      ),
      appBar: AppBar(
        title: Text(height.toString()),
      ),
      body: AnimatedOpacity(
        duration: Duration(seconds: 1),
        opacity: height == 100 ? 0 : 1,
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          height: height,
          width: height == 100 ? 100 : 200,
          color: Colors.red,
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final container = Container(
    // grey box
    width: 320,
    height: 240,
    color: Colors.grey[300],
    child: Center(
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..rotateZ(15 * 3.1415927 / 180),
        child: Container(
          // red box
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.red[400],
          ),
          child: Text(
            'Lorem ipsum',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: container,
    );
  }
}

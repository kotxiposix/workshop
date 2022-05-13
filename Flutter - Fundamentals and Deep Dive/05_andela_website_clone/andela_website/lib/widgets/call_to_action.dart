import 'package:flutter/material.dart';

class CallToAtion extends StatelessWidget {
  const CallToAtion({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Text(
          "Saiba mais",
          style: TextStyle(fontSize: 18),
        )),
        height: 64,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.green[100],
          borderRadius: BorderRadius.circular(16),
        ));
  }
}

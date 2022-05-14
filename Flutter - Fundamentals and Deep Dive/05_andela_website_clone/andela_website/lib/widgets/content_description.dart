import 'package:flutter/material.dart';

class ContentDescription extends StatelessWidget {
  const ContentDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Fluter Web",
            style: TextStyle(color: Colors.white, fontSize: 32),
          ),
          Text(
            "Descricao",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}

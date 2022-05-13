import 'package:flutter/material.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset("images/logo.png"),
        Row(
          children: [
            _NavBarItem(title: "Nav1"),
            SizedBox(
              width: 16,
            ),
            _NavBarItem(title: "Nav1"),
          ],
        )
      ]),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  const _NavBarItem({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, color: Colors.white),
    );
  }
}

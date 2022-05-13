import 'package:flutter/material.dart';

class CenteredContainer extends StatelessWidget {
  const CenteredContainer({Key? key, required Widget this.child})
      : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      alignment: Alignment.topCenter,
      constraints: const BoxConstraints(maxWidth: 1200),
      child: child,
    );
  }
}

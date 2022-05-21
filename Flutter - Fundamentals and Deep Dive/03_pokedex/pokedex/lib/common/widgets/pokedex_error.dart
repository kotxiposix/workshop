import 'package:flutter/material.dart';

class PokedexError extends StatelessWidget {
  const PokedexError({Key? key, this.message}) : super(key: key);
  final String? message;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(message ?? "Error Loading"),
      ),
    );
  }
}

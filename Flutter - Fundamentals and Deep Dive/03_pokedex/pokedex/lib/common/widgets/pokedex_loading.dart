import 'package:flutter/material.dart';

class PokedexLoading extends StatelessWidget {
  const PokedexLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

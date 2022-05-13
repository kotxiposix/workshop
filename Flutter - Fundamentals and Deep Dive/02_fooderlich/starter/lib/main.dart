import 'package:flutter/material.dart';
import 'package:fooderlich/food_card.dart';

void main() {
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fooderlich',
      home: Scaffold(
        appBar: AppBar(title: const Text('Fooderlich')),
        body: Center(child: FoodCard()),
      ),
    );
  }
}

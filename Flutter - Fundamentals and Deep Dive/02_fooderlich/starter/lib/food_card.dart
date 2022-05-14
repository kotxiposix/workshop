import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  FoodCard({Key? key}) : super(key: key);
  final String category = 'Editor\'s Choice';
  final String title = 'The Art of Dough';
  final String description = 'Learn to make the perfect bread.';
  final String chef = 'Ray Wenderlich';
  final textStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Stack(
          children: [
            Text(
              category,
              style: textStyle,
            ),
            Positioned(
              top: 16,
              child: Text(
                title,
                style: textStyle,
              ),
            ),
            Positioned(
              bottom: 16,
              right: 0,
              child: Text(
                description,
                style: textStyle,
              ),
            ),
            Positioned(
              bottom: 5,
              right: 0,
              child: Text(
                chef,
                style: textStyle,
              ),
            )
          ],
        ),
        padding: EdgeInsets.all(16),
        constraints: BoxConstraints.expand(width: 350, height: 350),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
            image: AssetImage("assets/mag1.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

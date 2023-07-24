import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class RectangleContaner extends StatelessWidget {
  RectangleContaner({
    super.key,
    required this.title,
    required this.name,
  });
  String title;
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 80,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Styles.h3Green),
          Text(name, style: Styles.small2Grey),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../res/styles.dart';

class CategoryButton extends StatelessWidget {
  CategoryButton(
      {super.key,
      required this.title,
      required this.isVolleyball,
      required this.isActive});
  String title;
  bool isVolleyball;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 164,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: isActive ? Styles.yellow : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            isVolleyball ? 'assets/volleyball.png' : 'assets/handball.png',
            color: isActive ? Colors.white : null,
          ),
          SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            width: 74,
            child: Text(
              title,
              style: !isActive ? Styles.small2DarkGrey : Styles.small2White,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../res/styles.dart';

class YellowButton extends StatelessWidget {
  YellowButton({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 62,
      decoration: BoxDecoration(
        color: Styles.yellow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        title,
        style: Styles.h1Grey,
      ),
    );
  }
}

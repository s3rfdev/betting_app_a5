import 'package:betting1/page/remind_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/styles.dart';

class BtnButton extends StatelessWidget {
  BtnButton({super.key, required this.isActive, required this.title});
  bool isActive;
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 90,
      height: 35,
      child: Text(
        title,
        style: Styles.small3White,
      ),
      decoration: BoxDecoration(
        color: isActive ? Styles.green : null,
        borderRadius: BorderRadius.circular(5),
        border: isActive
            ? null
            : Border.all(
                width: 0.5,
                color: Colors.white,
              ),
      ),
    );
  }
}

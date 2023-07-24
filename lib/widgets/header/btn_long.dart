import 'package:flutter/material.dart';

import '../../res/styles.dart';
import 'header.dart';

class BtnLong extends StatelessWidget {
  BtnLong({super.key, required this.category});
  CategoryEnum? category;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xff333333), borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (category != null)
            Container(
              width: 15,
              height: 15,
              margin: EdgeInsets.only(right: 8),
              child: Image.asset(
                'assets/${category!.name.toLowerCase()}.png',
                color: Colors.white,
              ),
            ),
          Text(category == null ? 'Choose sport' : category!.name.toString(),
              style: Styles.small3White),
        ],
      ),
    );
  }
}

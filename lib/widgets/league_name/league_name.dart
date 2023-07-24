import 'package:betting1/page/table_matches_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/styles.dart';

class LeagueName extends StatelessWidget {
  LeagueName({
    super.key,
    required this.title,
    required this.isBlack,
    required this.isClose,
  });
  String title;
  bool isBlack;
  bool isClose;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(TableMatchesPage()),
      child: Container(
        width: 307,
        height: 62,
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 15),
            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset(isBlack
                  ? 'assets/league_icon.png'
                  : 'assets/league_icon_black.png'),
            ),
            SizedBox(width: 20),
            Text(title, style: Styles.small2Grey),
            Expanded(child: SizedBox()),
            if (isClose)
              Icon(Icons.close, color: const Color.fromARGB(255, 121, 11, 3)),
            SizedBox(width: 15)
          ],
        ),
      ),
    );
  }
}

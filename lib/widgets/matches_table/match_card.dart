import 'dart:math';

import 'package:betting1/page/match_details_page.dart';
import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MatchCard extends StatelessWidget {
  MatchCard({
    super.key,
    required this.isRemind,
    required this.name1,
    required this.name2,
  });
  bool isRemind;

  String name1;
  String name2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 0.4,
          color: Styles.whiteGrey,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 5, top: 5),
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: isRemind ? Styles.green : Styles.whiteGrey,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    Icons.add_alert,
                    color: Styles.grey,
                    size: 16,
                  ),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Styles.grey,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () => Get.to(MatchDetailsPage()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //------team1
                SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/league_icon_black.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(name1),
                    ],
                  ),
                ),
                //------time
                SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      Text(
                        DateFormat('dd.MM').format(DateTime.now()),
                        style: Styles.small2Grey,
                      ),
                      Text(
                        DateFormat('hh:mm').format(DateTime.now()
                            .add(Duration(hours: Random().nextInt(10)))),
                        style: Styles.h2,
                      ),
                    ],
                  ),
                ),
                //------team
                SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/league_icon.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(name2),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

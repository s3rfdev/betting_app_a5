import 'package:betting1/data/dummy_data.dart';
import 'package:betting1/page/category_page.dart';
import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/buttons/yellow_button.dart';
import 'package:betting1/widgets/league_name/league_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Header(
            category: null,
            page: 'Category',
          ),
          Container(
            width: double.infinity,
            color: Colors.black.withOpacity(0.6),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  margin: EdgeInsets.only(
                    top: 70,
                    left: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                      color: Styles.whiteGrey,
                      borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Text(
                        'Notifications',
                        style: Styles.h1,
                      ),
                      SizedBox(height: 20),
                      LeagueName(
                          title: leagueList[0], isBlack: false, isClose: true),
                      LeagueName(
                          title: leagueList[1], isBlack: false, isClose: true),
                      LeagueName(
                          title: leagueList[2], isBlack: false, isClose: true),
                      LeagueName(
                          title: leagueList[3], isBlack: false, isClose: true),
                      LeagueName(
                          title: leagueList[4], isBlack: false, isClose: true),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () => Get.to(CategoryPage()),
                    child: YellowButton(
                      title: 'Go to main menu',
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/choose_league/choose_league.dart';
import '../widgets/header/header.dart';

class LeaguePage extends StatelessWidget {
  const LeaguePage({super.key});

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
                      Row(
                        children: [
                          SizedBox(width: 20),
                          InkWell(
                            onTap: () => Get.back(),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: Styles.yellow,
                                  size: 16,
                                ),
                                Text(
                                  'Back',
                                  style: Styles.h3yellow,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            'Choose League',
                            style: Styles.h1,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ChooseLeague(),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Text(
                      'Cancel',
                      style: Styles.h3White,
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

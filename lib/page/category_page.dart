import 'package:betting1/page/league_page.dart';
import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/choose_category/chose_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/header/header.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
                        'Choose sport',
                        style: Styles.h1,
                      ),
                      SizedBox(height: 20),
                      ChoseCategory(),
                      SizedBox(height: 60),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                InkWell(
                  onTap: () => Get.to(LeaguePage()),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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

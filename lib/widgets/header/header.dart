import 'package:betting1/page/category_page.dart';
import 'package:betting1/page/options_page.dart';
import 'package:betting1/page/remind_page.dart';
import 'package:betting1/widgets/header/btn_button.dart';
import 'package:betting1/widgets/header/btn_long.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum CategoryEnum {
  Volleyball,
  Handball,
}

class Header extends StatelessWidget {
  Header({super.key, required this.category, required this.page});
  CategoryEnum? category;
  String page;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff343434),
            Color(0xff212121),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () => Get.to(CategoryPage()),
                  child: BtnButton(
                      isActive: page == 'Category', title: 'Category'),
                ),
                SizedBox(width: 20),
                InkWell(
                    onTap: () => Get.to(RemindPage()),
                    child:
                        BtnButton(isActive: page == 'Remind', title: 'Remind')),
                SizedBox(width: 20),
                InkWell(
                    onTap: () => Get.to(OptionsPage()),
                    child: BtnButton(
                        isActive: page == 'Options', title: 'Options')),
              ],
            ),
            SizedBox(height: 15),
            BtnLong(category: category),
          ],
        ),
      ),
    );
  }
}

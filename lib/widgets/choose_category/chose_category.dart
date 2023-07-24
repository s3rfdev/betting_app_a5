import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/choose_category/catgeory_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../page/league_page.dart';

class ChoseCategory extends StatefulWidget {
  const ChoseCategory({super.key});

  @override
  State<ChoseCategory> createState() => _ChoseCategoryState();
}

class _ChoseCategoryState extends State<ChoseCategory> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    id = 0;
                  });
                  Get.to(LeaguePage());
                },
                child: CategoryButton(
                  title: "Volleyball",
                  isVolleyball: true,
                  isActive: id == 0,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    id = 1;
                  });
                  Get.to(LeaguePage());
                },
                child: CategoryButton(
                  title: "Handball",
                  isVolleyball: false,
                  isActive: id == 1,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    id = 2;
                  });
                  Get.to(LeaguePage());
                },
                child: CategoryButton(
                  title: "Volleyball (Women)",
                  isVolleyball: true,
                  isActive: id == 2,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    id = 3;
                  });
                  Get.to(LeaguePage());
                },
                child: CategoryButton(
                  title: "Handball (Women)",
                  isVolleyball: false,
                  isActive: id == 3,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

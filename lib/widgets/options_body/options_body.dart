import 'package:betting1/page/options_page.dart';
import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/buttons/yellow_button.dart';
import 'package:betting1/widgets/header/btn_long.dart';
import 'package:betting1/widgets/league_name/league_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'buttons_on_off_panel.dart';

class OptionsBody extends StatelessWidget {
  const OptionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sound', style: Styles.h2),
              ButtonsOnOffPanel(),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 100,
                  child: Text('Calendar synchronization', style: Styles.h2)),
              ButtonsOnOffPanel(),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 100, child: Text('Notifications', style: Styles.h2)),
              ButtonsOnOffPanel(),
            ],
          ),
          SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            child: Text('Starting league', style: Styles.h2),
          ),
          SizedBox(height: 20),
          LeagueName(
              title: 'Al malaca Puero League', isBlack: true, isClose: false),
          SizedBox(height: 60),
          InkWell(
            onTap: () => Get.back(),
            child: YellowButton(title: 'Clear all reminds'),
          ),
        ],
      ),
    );
  }
}

import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/match_details/rectangle_container.dart';
import 'package:betting1/widgets/matches_table/match_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/dummy_data.dart';

class MatchDetailsBody extends StatelessWidget {
  const MatchDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(10),
            child: InkWell(
              onTap: () => Get.back(),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Text('Back', style: Styles.h2),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          MatchCard(
              isRemind: false,
              name1: tableList[4].teamName,
              name2: tableList[5].teamName),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RectangleContaner(title: 'Stadium', name: 'taniumd name'),
              RectangleContaner(title: 'City', name: 'taniumd name'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RectangleContaner(title: 'Capacity', name: '1200000'),
              RectangleContaner(title: 'Country', name: 'Russia'),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RectangleContaner(title: 'Home position', name: '4'),
              RectangleContaner(title: 'Away position', name: '2'),
            ],
          ),
          SizedBox(height: 60),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('14', style: Styles.small2Grey),
                    Text('1 Set', style: Styles.small2Grey),
                    Text('4', style: Styles.small2Grey),
                  ],
                ),
                Divider(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('14', style: Styles.small2Grey),
                    Text('2 Set', style: Styles.small2Grey),
                    Text('6', style: Styles.small2Grey),
                  ],
                ),
                Divider(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('17', style: Styles.small2Grey),
                    Text('3 Set', style: Styles.small2Grey),
                    Text('12', style: Styles.small2Grey),
                  ],
                ),
                Divider(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('19', style: Styles.small2Grey),
                    Text('4 Set', style: Styles.small2Grey),
                    Text('15', style: Styles.small2Grey),
                  ],
                ),
                Divider(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('25', style: Styles.small2Grey),
                    Text('5 Set', style: Styles.small2Grey),
                    Text('28', style: Styles.small2Grey),
                  ],
                ),
                Divider(),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(color: Styles.grey),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Match text broadcast',
                    style: Styles.h1White,
                  ),
                ),
                SizedBox(height: 20),
                Text('12', style: Styles.h3Green),
                Text(
                    '- et dolore sed laoreet eros wisi feugait facilisi. ut veniam, luptatum',
                    style: Styles.small2White),
                SizedBox(height: 10),
                Text('16', style: Styles.h3Green),
                Text(
                    'augue exerci te illum esse facilisis consequat, Duis in odio nonummy',
                    style: Styles.small2White),
                SizedBox(height: 10),
                Text('22', style: Styles.h3Green),
                Text(
                    'volutpat. eum diam odio aliquam wisi Duis ullamcorper hendrerit ipsum consequat.',
                    style: Styles.small2White),
                SizedBox(height: 10),
                Text('27', style: Styles.h3Green),
                Text(
                    'consequat, nulla commodo feugiat dignissim delenit amet, Ut magna erat zzril',
                    style: Styles.small2White),
                SizedBox(height: 10),
                Text('31', style: Styles.h3Green),
                Text(
                    '- et dolore sed laoreet eros wisi feugait facilisi. ut veniam, luptatum',
                    style: Styles.small2White),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

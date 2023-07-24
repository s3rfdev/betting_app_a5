import 'package:betting1/page/info_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/dummy_data.dart';
import '../../res/styles.dart';
import '../table_matches/table_matches_header.dart';
import 'matches_table_header.dart';
import 'matches_table_row.dart';

class MatchesBody extends StatelessWidget {
  const MatchesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 90),
      child: Column(
        children: [
          Image.asset(
            'assets/league_icon_black.png',
            scale: 1.3,
          ),
          SizedBox(height: 10),
          Text(
            'League 2. Women',
            style: Styles.h2,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Divider(),
                InkWell(
                  onTap: () => Get.to(InfoPage()),
                  child: Image.asset('assets/i.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MatchesTableHeader(),
          Divider(),
          MatchesTableRow(
              name: tableList[0].teamName,
              p: tableList[0].p,
              gd: tableList[0].gd,
              pts: tableList[0].pts),
          MatchesTableRow(
              name: tableList[1].teamName,
              p: tableList[1].p,
              gd: tableList[1].gd,
              pts: tableList[1].pts),
          MatchesTableRow(
              name: tableList[2].teamName,
              p: tableList[2].p,
              gd: tableList[2].gd,
              pts: tableList[2].pts),
          MatchesTableRow(
              name: tableList[3].teamName,
              p: tableList[3].p,
              gd: tableList[3].gd,
              pts: tableList[3].pts),
          MatchesTableRow(
              name: tableList[4].teamName,
              p: tableList[4].p,
              gd: tableList[4].gd,
              pts: tableList[4].pts),
          MatchesTableRow(
              name: tableList[5].teamName,
              p: tableList[5].p,
              gd: tableList[5].gd,
              pts: tableList[5].pts),
        ],
      ),
    );
  }
}

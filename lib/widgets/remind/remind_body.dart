import 'package:betting1/widgets/matches_table/match_card.dart';
import 'package:betting1/widgets/matches_table/up_in.dart';
import 'package:flutter/material.dart';

import '../../data/dummy_data.dart';

class RemindBody extends StatefulWidget {
  const RemindBody({super.key});

  @override
  State<RemindBody> createState() => _RemindBodyState();
}

class _RemindBodyState extends State<RemindBody> {
  bool remind = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () => setState(() {
                  remind = false;
                }),
                child: Text(
                  'Clear all',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            MatchCard(
                isRemind: remind,
                name1: tableList[0].teamName,
                name2: tableList[1].teamName),
            MatchCard(
                isRemind: remind,
                name1: tableList[2].teamName,
                name2: tableList[3].teamName),
            MatchCard(
                isRemind: remind,
                name1: tableList[4].teamName,
                name2: tableList[5].teamName),
            SizedBox(height: 30),
          ],
        ));
  }
}

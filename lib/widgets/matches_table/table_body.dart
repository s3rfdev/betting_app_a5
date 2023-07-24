import 'package:betting1/widgets/matches_table/match_card.dart';
import 'package:betting1/widgets/matches_table/up_in.dart';
import 'package:flutter/material.dart';

import '../../data/dummy_data.dart';

class TableBody extends StatefulWidget {
  const TableBody({super.key});

  @override
  State<TableBody> createState() => _TableBodyState();
}

class _TableBodyState extends State<TableBody> {
  bool isUp = true;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 80),
            UpIn(
              isUp: isUp,
              change: (val) => setState(() {
                isUp = val;
              }),
            ),
            SizedBox(height: 30),
            isUp
                ? MatchCard(
                    isRemind: false,
                    name1: tableList[0].teamName,
                    name2: tableList[1].teamName)
                : MatchCard(
                    isRemind: false,
                    name1: tableList[6].teamName,
                    name2: tableList[7].teamName),
            isUp
                ? MatchCard(
                    isRemind: false,
                    name1: tableList[2].teamName,
                    name2: tableList[3].teamName)
                : MatchCard(
                    isRemind: false,
                    name1: tableList[4].teamName,
                    name2: tableList[5].teamName),
            isUp
                ? MatchCard(
                    isRemind: false,
                    name1: tableList[4].teamName,
                    name2: tableList[5].teamName)
                : MatchCard(
                    isRemind: false,
                    name1: tableList[6].teamName,
                    name2: tableList[7].teamName),
          ],
        ));
  }
}

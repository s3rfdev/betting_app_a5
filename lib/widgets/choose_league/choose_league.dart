import 'package:betting1/data/dummy_data.dart';
import 'package:betting1/widgets/league_name/league_name.dart';
import 'package:flutter/material.dart';

class ChooseLeague extends StatelessWidget {
  const ChooseLeague({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          LeagueName(title: leagueList[0], isBlack: true, isClose: false),
          LeagueName(title: leagueList[1], isBlack: false, isClose: false),
          LeagueName(title: leagueList[2], isBlack: true, isClose: false),
          LeagueName(title: leagueList[3], isBlack: false, isClose: false),
          LeagueName(title: leagueList[4], isBlack: true, isClose: false),
          LeagueName(title: leagueList[5], isBlack: false, isClose: false),
          LeagueName(title: leagueList[6], isBlack: true, isClose: false),
          LeagueName(title: leagueList[7], isBlack: true, isClose: false),
        ],
      ),
    );
  }
}

import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class MatchesTableRow extends StatelessWidget {
  MatchesTableRow({
    super.key,
    required this.name,
    required this.p,
    required this.gd,
    required this.pts,
  });
  String name;
  String p;
  String gd;
  String pts;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/league_icon.png',
                scale: 3,
              ),
              SizedBox(width: 4),
              Text(name, style: Styles.small2DarkGrey),
              Expanded(child: SizedBox(width: 160)),
              Container(
                width: 30,
                alignment: Alignment.center,
                child: Text(p, style: Styles.small2DarkGrey),
              ),
              SizedBox(width: 10),
              Container(
                width: 30,
                alignment: Alignment.center,
                child: Text(gd, style: Styles.small2DarkGrey),
              ),
              SizedBox(width: 10),
              Container(
                width: 30,
                alignment: Alignment.center,
                child: Text(pts, style: Styles.small2DarkGrey),
              ),
              SizedBox(width: 5),
            ],
          ),
          Divider(),
        ],
      ),
    );
  }
}

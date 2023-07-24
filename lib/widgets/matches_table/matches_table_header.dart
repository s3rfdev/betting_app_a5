import 'package:flutter/material.dart';

import '../../res/styles.dart';

class MatchesTableHeader extends StatelessWidget {
  const MatchesTableHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(width: 15),
          Text('Club', style: Styles.small2DarkGrey),
          Expanded(child: SizedBox(width: 160)),
          Text('P', style: Styles.small2DarkGrey),
          SizedBox(width: 20),
          Text('GD', style: Styles.small2DarkGrey),
          SizedBox(width: 15),
          Text('PTS', style: Styles.small2DarkGrey),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}

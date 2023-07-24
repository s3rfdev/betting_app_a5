import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class UpIn extends StatelessWidget {
  UpIn({super.key, required this.isUp, required this.change});
  bool isUp;
  Function change;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Styles.grey,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () => change(true),
            child: Container(
              width: !isUp ? 130 : 170,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: !isUp ? null : Styles.green,
              ),
              alignment: Alignment.center,
              child: Text(
                'Upcoming',
                style: isUp ? Styles.small2White : Styles.small2Grey,
              ),
            ),
          ),
          InkWell(
            onTap: () => change(false),
            child: Container(
              width: isUp ? 130 : 170,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: isUp ? null : Styles.green,
              ),
              alignment: Alignment.center,
              child: Text(
                'Completed',
                style: !isUp ? Styles.small2White : Styles.small2Grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

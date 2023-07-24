import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class TableMathesHeader extends StatelessWidget {
  TableMathesHeader({super.key, required this.isTable, required this.change});

  bool isTable;
  Function change;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => change(true),
            child: Container(
              height: 55,
              alignment: Alignment.center,
              color: isTable ? Styles.green : null,
              child: Text(
                'Table',
                style: Styles.h2,
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () => change(false),
            child: Container(
              height: 55,
              alignment: Alignment.center,
              color: !isTable ? Styles.green : null,
              child: Text(
                'Matches',
                style: Styles.h2,
              ),
            ),
          ),
        )
      ],
    );
  }
}

import 'package:betting1/res/styles.dart';
import 'package:flutter/material.dart';

class ButtonsOnOffPanel extends StatefulWidget {
  const ButtonsOnOffPanel({super.key});

  @override
  State<ButtonsOnOffPanel> createState() => _ButtonsOnOffPanelState();
}

class _ButtonsOnOffPanelState extends State<ButtonsOnOffPanel> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Row(
        children: [
          InkWell(
            onTap: () => setState(() {
              isOn = true;
            }),
            child: Container(
              width: 85,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: isOn ? Styles.green : Styles.whiteGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('ON', style: Styles.h2),
            ),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () => setState(() {
              isOn = false;
            }),
            child: Container(
              width: 85,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: !isOn ? Styles.green : Styles.whiteGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('OFF', style: Styles.h2),
            ),
          ),
        ],
      ),
    );
  }
}

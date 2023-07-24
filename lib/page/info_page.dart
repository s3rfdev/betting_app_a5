import 'package:betting1/res/styles.dart';
import 'package:betting1/widgets/buttons/yellow_button.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/header/header.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Header(
            category: null,
            page: 'Category',
          ),
          Container(
            width: double.infinity,
            color: Colors.black.withOpacity(0.6),
          ),
          Column(
            children: [
              Container(
                height: 500,
                margin: EdgeInsets.only(
                  top: 70,
                  left: 20,
                  right: 20,
                ),
                decoration: BoxDecoration(
                    color: Styles.whiteGrey,
                    borderRadius: BorderRadius.circular(10)),
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Info',
                      style: Styles.h1,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('W'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('Wins'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('D'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('Draws'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('L'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('Loses'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('GD'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('Goal differencce'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 300,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('PTS'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Text('Points Total'),
                              decoration:
                                  BoxDecoration(border: Border.all(width: 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () => Get.back(),
                  child: YellowButton(
                    title: 'OK, go back',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

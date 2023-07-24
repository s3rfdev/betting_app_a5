import 'package:flutter/material.dart';
import '../widgets/header/header.dart';
import '../widgets/match_details/match_details_body.dart';

class MatchDetailsPage extends StatelessWidget {
  MatchDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Header(
            category: CategoryEnum.Handball,
            page: 'Category',
          ),
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150,
              child: Image.asset(
                'assets/bg.png',
                fit: BoxFit.cover,
              ),
            ),
            MatchDetailsBody(),
          ]),
        ]),
      ),
    );
  }
}

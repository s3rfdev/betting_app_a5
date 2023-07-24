import 'package:betting1/widgets/remind/remind_body.dart';
import 'package:flutter/material.dart';
import '../widgets/header/header.dart';

class RemindPage extends StatelessWidget {
  RemindPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Header(category: CategoryEnum.Handball, page: 'Remind'),
          Stack(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 150,
              child: Image.asset(
                'assets/bg.png',
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: 30),
            // MatchesBody(),
            RemindBody(),
          ]),
        ]),
      ),
    );
  }
}

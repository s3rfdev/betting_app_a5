import 'package:flutter/material.dart';
import '../widgets/header/header.dart';
import '../widgets/options_body/options_body.dart';

class OptionsPage extends StatelessWidget {
  OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Header(
            category: CategoryEnum.Handball,
            page: 'Options',
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
            SizedBox(height: 30),
            OptionsBody(),
          ]),
        ]),
      ),
    );
  }
}

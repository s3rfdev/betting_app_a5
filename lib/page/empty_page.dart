import 'package:flutter/material.dart';

import '../widgets/header/header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Header(
          category: null,
          page: 'Category',
        ),
      ]),
    );
  }
}

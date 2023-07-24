import 'package:betting1/widgets/matches_table/table_body.dart';
import 'package:betting1/widgets/table_matches/table_matches_header.dart';
import 'package:flutter/material.dart';

import '../widgets/header/header.dart';

import '../widgets/matches_table/mathces_body.dart';

class TableMatchesPage extends StatefulWidget {
  TableMatchesPage({super.key});

  @override
  State<TableMatchesPage> createState() => _TableMatchesPageState();
}

class _TableMatchesPageState extends State<TableMatchesPage> {
  bool isTable = true;
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
            TableMathesHeader(
              isTable: isTable,
              change: (val) => setState(() {
                isTable = !val;
              }),
            ),
            SizedBox(height: 30),
            !isTable ? TableBody() : MatchesBody(),
          ]),
        ]),
      ),
    );
  }
}

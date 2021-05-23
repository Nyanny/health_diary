import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_diary/widgets/charts.dart';
import 'package:health_diary/widgets/cubitAppBar.dart';

import 'package:health_diary/widgets/indicators.dart';

class HomePage extends StatelessWidget {
  String tempTitle = "Показатели";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: CubitAppbar(),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                // TODO узнать, нужен ли скролл и сделать его, если нужен (99%, что нужен, нужно понять, как tabbar controller связать через cubit)
                physics: NeverScrollableScrollPhysics(),
                children: [
                  // Indicators
                  Indicators(),
                  // Charts
                  Charts(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.menu,
                      color: Colors.teal,
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

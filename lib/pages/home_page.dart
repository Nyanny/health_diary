import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_diary/widgets/charts.dart';

import 'package:health_diary/widgets/cubitTabBar.dart';
import 'package:health_diary/widgets/indicators.dart';


class HomePage extends StatelessWidget {
  // TEMP TODO replace using cubit
  String tempTitle = "Показатели";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backwardsCompatibility: false,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.white),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            tempTitle,
            style: TextStyle(color: Colors.black26),
          ),
          actions: [
            IconButton(
              color: Colors.grey,
              icon: Icon(Icons.contact_support_outlined),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.grey,
              icon: Icon(Icons.notification_important_outlined),
              onPressed: () {},
            ),
            IconButton(
              color: Colors.grey,
              icon: Icon(Icons.person_outline),
              onPressed: () {},
            ),
          ],
          bottom: CubitTabBar(),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
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
              children: [Padding(
                padding: const EdgeInsets.all(10.0),
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.menu,
                    color: Colors.teal,
                  ),
                  backgroundColor: Colors.white,
                ),
              ),],
            )
          ],
        ),
      ),
    );
  }
}

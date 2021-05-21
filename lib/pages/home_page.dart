import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  // TEMP TODO replace
  String tempTitle = "Показатели";


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backwardsCompatibility: false,
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(tempTitle, style: TextStyle(color: Colors.black26),),
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
        bottom: TabBar(
          onTap: (tabIndex){
            switch (tabIndex) {
              case 0:
                {}
                break;
              case 1:
                {}
                break;
            }
          },
          tabs: [
            Tab(text: "Показатели",),
            Tab(text: "Графики",),
          ],
        ),
      ),
      body: Column(
        children: [
          TabBarView(
            children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
            ],
          ),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.menu, color: Colors.teal,), backgroundColor: Colors.white,)
        ],
      ),
    );
  }
}

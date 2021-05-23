import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/appbar_cubit.dart';
import 'package:health_diary/cubit/appbar_state.dart';

import 'cubitTabBar.dart';

class CubitAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarCubit, AppBarState>(builder: (context, state) {
      if (state is ChartsChosenState) {
        return AppBar(
          backwardsCompatibility: false,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.white),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: state.title,
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
        );
      } else if (state is IndicatorsChosenState) {
        return AppBar(
          backwardsCompatibility: false,
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.white),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: state.title,
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
        );
      }

      return Container();
    });
  }

  @override
  // Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
  Size get preferredSize => Size.fromHeight(90);
}

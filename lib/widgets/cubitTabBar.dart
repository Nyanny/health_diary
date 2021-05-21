import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/charts_cubit.dart';
import 'package:health_diary/cubit/indicators_cubit.dart';

class CubitTabBar extends StatelessWidget implements PreferredSizeWidget{

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.black,
      onTap: (tabIndex) {
        switch (tabIndex) {

        // indicators
          case 0:
            {
              BlocProvider.of<IndicatorsCubit>(context).load();
            }
            break;

        // charts
          case 1:
            {
              BlocProvider.of<ChartsCubit>(context).load();
            }
            break;
        }
      },
      tabs: [
        Tab(
          text: "Показатели",
        ),
        Tab(
          text: "Графики",
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(20);

}

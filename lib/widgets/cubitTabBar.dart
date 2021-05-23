import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/appbar_cubit.dart';
import 'package:health_diary/cubit/charts_cubit.dart';
import 'package:health_diary/cubit/indicators_cubit.dart';

class CubitTabBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black12, // Tab Bar color change
        child: Row(
          children: [
            Expanded(
              child: TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.greenAccent,
                onTap: (tabIndex) {
                  switch (tabIndex) {

                    // indicators
                    case 0:
                      {
                        BlocProvider.of<IndicatorsCubit>(context).load();
                        BlocProvider.of<AppBarCubit>(context)
                            .toggleTitleIndicators();
                      }
                      break;

                    // charts
                    case 1:
                      {
                        BlocProvider.of<ChartsCubit>(context).load();
                        BlocProvider.of<AppBarCubit>(context)
                            .toggleTitleCharts();
                      }
                      break;
                  }
                },
                tabs: [
                  Tab(
                    text: "ПОКАЗАТЕЛИ",
                  ),
                  Tab(
                    text: "ГРАФИКИ",
                  ),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(30);
}

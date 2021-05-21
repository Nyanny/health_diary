import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/charts_cubit.dart';
import 'package:health_diary/cubit/indicators_cubit.dart';
import 'package:health_diary/pages/home_page.dart';
import 'package:health_diary/services/charts_repository.dart';
import 'package:health_diary/services/indicators_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final chartsRepository = ChartsRepository();
  final indicatorsRepository = IndicatorsRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<IndicatorsCubit>(
            create: (context) =>
                IndicatorsCubit(repository: indicatorsRepository)..load(),
          ),
          BlocProvider<ChartsCubit>(
            create: (context) => ChartsCubit(repository: chartsRepository),
          ),
        ],
        child: HomePage(),
      ),
    );
  }
}
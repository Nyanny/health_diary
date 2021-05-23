import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/appbar_state.dart';

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit(AppBarState initialState)
      : super(ChartsChosenState(title: _chartsTitle));

  static final _chartsTitle = Text(
    "Графики",
    style: TextStyle(color: Colors.black26),
  );

  static final _indicatorsTitle = Text(
    "Показатели",
    style: TextStyle(color: Colors.black26),
  );

  void toggleTitleCharts() {
    emit(ChartsChosenState(title: _chartsTitle));
  }

  void toggleTitleIndicators() {
    emit(IndicatorsChosenState(title: _indicatorsTitle));
  }
}

import 'package:flutter/material.dart';

abstract class AppBarState {}

class IndicatorsChosenState extends AppBarState {
  Text title;
  IndicatorsChosenState({required this.title});
}

class ChartsChosenState extends AppBarState {
  Text title;
  ChartsChosenState({required this.title});
}

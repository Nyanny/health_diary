import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/charts_cubit.dart';
import 'package:health_diary/cubit/tabbar_state.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Charts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChartsCubit, TabBarState>(builder: (context, state) {
      if (state is EmptyTabState) {
        return Center(
          child: Text(
            'Данных в базе нет',
            style: TextStyle(fontSize: 20.0),
          ),
        );
      }

      if (state is LoadingTabState) {
        return Center(child: CircularProgressIndicator());
      }

      if (state is LoadedTabState) {
        // List<double> chartData = state.loadedData as List<double>;
        return Container(
          height: 256.0,
          // padding: const EdgeInsets.only(top: 50.0),
          padding: const EdgeInsets.symmetric(vertical: 50.0),
          child: SfSparkLineChart(
            color: Colors.red,
            //Enable PlotBand
            plotBand: SparkChartPlotBand(
                start: 50, end: 60, color: Colors.greenAccent),
            //Enable the trackball
            trackball: SparkChartTrackball(
                activationMode: SparkChartActivationMode.tap),
            //Enable marker
            marker:
                SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
            //Enable data label
            labelDisplayMode: SparkChartLabelDisplayMode.all,
            labelStyle: TextStyle(
                color: Colors.red, background: Paint()..color = Colors.white),
            data: state.loadedData as List<double>,
          ),
        );
      }

      if (state is ErrorLoadingTabState) {
        return Center(
          child: Text(
            'Ошибка получения данных',
            style: TextStyle(fontSize: 20.0),
          ),
        );
      }

      // "обход null-safety"
      return Container();
    });
  }
}

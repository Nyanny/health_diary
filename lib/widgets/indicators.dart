import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/indicators_cubit.dart';
import 'package:health_diary/cubit/tabbar_state.dart';

class Indicators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IndicatorsCubit, TabBarState>(builder: (context, state) {
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
        return ListView.builder(
          itemCount: state.loadedData.length,
          itemBuilder: (context, index) => Container(
            child: ListTile(
              title: Text(
                '${state.loadedData[index].toString()}',
              ),
            ),
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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/tabbar_state.dart';
import 'package:health_diary/services/charts_repository.dart';

class ChartsCubit extends Cubit<TabBarState> {
  ChartsCubit({required this.repository}) : super(LoadingTabState());

  final ChartsRepository repository;

  Future<void> load() async{
    try {
      emit(LoadingTabState());
      final List charts = await this.repository.getData();
      emit(LoadedTabState(loadedData: charts));
    }
    catch (e){
      emit(ErrorLoadingTabState());
    }
  }
}
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_diary/cubit/tabbar_state.dart';
import 'package:health_diary/services/indicators_repository.dart';

class IndicatorsCubit extends Cubit<TabBarState> {
  IndicatorsCubit({required this.repository}) : super(LoadingTabState());

  final IndicatorsRepository repository;

  Future<void> load() async {
    try {
      emit(LoadingTabState());
      final List indicators = await this.repository.getData();
      emit(LoadedTabState(loadedData: indicators));
    } catch (e) {
      emit(ErrorLoadingTabState());
    }
  }
}

// class TabBarState {
//   TabBarState({this.isLoading = false, this.isFailed = false, this.isLoaded = false});
//
//   final bool isLoading;
//   final bool isLoaded;
//
//   final bool isFailed;
// }

abstract class TabBarState{}

class EmptyTabState extends TabBarState {}

class LoadingTabState extends TabBarState {}

class ErrorLoadingTabState extends TabBarState {}

class LoadedTabState extends TabBarState {
  List<dynamic> loadedData;
  LoadedTabState({required this.loadedData});
}


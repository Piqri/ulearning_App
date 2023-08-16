class HomePageState {
  const HomePageState({this.index = 0});
  final int index;

  HomePageState copyWith({int? index}) {
    return HomePageState(index: index ?? this.index);
  }
}

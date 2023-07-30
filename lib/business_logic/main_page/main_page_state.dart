class MainPageState{

  int currentPageIndex;

  MainPageState({required this.currentPageIndex});

  @override
  List<Object?> get props => [currentPageIndex];

  MainPageState copyWith({
    int? currentPageIndex
  }) {
    return MainPageState(
      currentPageIndex: currentPageIndex?? this.currentPageIndex,
    );
  }

}
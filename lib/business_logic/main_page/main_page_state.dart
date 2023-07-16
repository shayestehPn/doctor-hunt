class MainPageState{

  int currentPageValue;

  MainPageState({required this.currentPageValue});

  @override
  List<Object?> get props => [currentPageValue];

  MainPageState copyWith({
    int? currentPageValue
  }) {
    return MainPageState(
      currentPageValue: currentPageValue?? this.currentPageValue,
    );
  }

}
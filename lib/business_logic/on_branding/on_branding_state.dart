 class OnBrandingState {

   int currentPageIndex;

   OnBrandingState({required this.currentPageIndex});

   @override
   List<Object?> get props => [currentPageIndex];

   OnBrandingState copyWith({
   int? currentPageIndex
   }) {
     return OnBrandingState(
       currentPageIndex: currentPageIndex?? this.currentPageIndex,
     );
   }

}
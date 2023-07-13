 class OnBrandingState {

   int currentPageValue;

   OnBrandingState({required this.currentPageValue});

   @override
   List<Object?> get props => [currentPageValue];

   OnBrandingState copyWith({
   int? currentPageValue
   }) {
     return OnBrandingState(
       currentPageValue: currentPageValue?? this.currentPageValue,
     );
   }

}
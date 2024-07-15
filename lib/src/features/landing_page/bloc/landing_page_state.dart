part of 'landing_page_bloc.dart';

class LandingPageState extends Equatable {
  final int selectedIndex;
  // final FormSubmissionStatus formStatus;
  final bool isFabVisible;
  final bool isNavBarVisible;

  const LandingPageState({
    this.selectedIndex = 0,
    // this.formStatus = const InitialFormStatus(),
    this.isFabVisible = false,
    this.isNavBarVisible = false,
});

  LandingPageState copyWith({
    int? selectedIndex,
    // FormSubmissionStatus? formStatus,
    bool? isFabVisible,
    bool? isNavBarVisible,
}) {
    return LandingPageState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      // formStatus: formStatus ?? this.formStatus,
      isFabVisible: isFabVisible ?? this.isFabVisible,
      isNavBarVisible: isNavBarVisible ?? this.isNavBarVisible,
    );
  }
  
  @override
  List<Object> get props => [
    isNavBarVisible,
    isFabVisible,
    selectedIndex,
  ];
}

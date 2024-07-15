part of 'landing_page_bloc.dart';

sealed class LandingPageEvent extends Equatable {
  const LandingPageEvent();

  @override
  List<Object> get props => [];
}

class HomeIconTapEvent extends LandingPageEvent {
  final int index;

  const HomeIconTapEvent({required this.index});

  @override
  List<Object> get props => [index];
}

class CategoryIndexReceived extends LandingPageEvent {
  final int index;

  const CategoryIndexReceived({required this.index});

  @override
  List<Object> get props => [index];
}

class ToggleFabVisibility extends LandingPageEvent {
  final bool visibility;

  const ToggleFabVisibility({required this.visibility});

  @override
  List<Object> get props => [visibility];
}

class ToggleNavbarVisibility extends LandingPageEvent {
  final bool isVisible;

  const ToggleNavbarVisibility({required this.isVisible});

  @override
  List<Object> get props => [isVisible];
}

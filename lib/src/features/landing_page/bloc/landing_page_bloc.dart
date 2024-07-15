import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'landing_page_event.dart';

part 'landing_page_state.dart';

class LandingPageBloc extends Bloc<LandingPageEvent, LandingPageState> {
  LandingPageBloc() : super(const LandingPageState()) {
    on<CategoryIndexReceived>(_onCategoryIndexReceived);
    on<HomeIconTapEvent>(_onIconTapped);
    on<ToggleFabVisibility>(_toggleFabVisibility);
    on<ToggleNavbarVisibility>(_onToggleNavbarVisibility);
  }

  void _onCategoryIndexReceived(
      CategoryIndexReceived event, Emitter<LandingPageState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }

  void _onIconTapped(HomeIconTapEvent event, Emitter<LandingPageState> emit) {
    debugPrint('Home onClicked: ${event.index}');
    emit(
      state.copyWith(
        selectedIndex: event.index,
        // formStatus: IconTapped(),
      ),
    );
  }

  void _toggleFabVisibility(
      ToggleFabVisibility event, Emitter<LandingPageState> emit) {
    emit(state.copyWith(isFabVisible: event.visibility));
  }

  void _onToggleNavbarVisibility(
      ToggleNavbarVisibility event, Emitter<LandingPageState> emit) {
    emit(state.copyWith(isNavBarVisible: event.isVisible));
  }
}

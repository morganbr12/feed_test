import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../share/app_icons/app_icons.dart';
import '../bottom_navbar.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavState()) {
    on<UpdateNavSelectedIndex>(_onUpdateNavSelectedIndex);
    on<GetNavItem>(_onGetNavItems);
  }

  FutureOr<void> _onUpdateNavSelectedIndex(
      UpdateNavSelectedIndex event, Emitter<BottomNavState> emit) {
    List<BottomNavIcon> updateBottomNavList = List.from(state.bottomNavList);

    updateBottomNavList.asMap().forEach((index, bottomNav) {
      BottomNavIcon updatedBottomNav;
      if (event.index == index) {
        updatedBottomNav = bottomNav.copyWith(isActive: !bottomNav.isActive);
      } else {
        updatedBottomNav = bottomNav.copyWith(isActive: false);
      }
      updateBottomNavList[index] = updatedBottomNav;
    });

    emit(state.copyWith(
        navSelectedIndex: event.index, bottomNavList: updateBottomNavList));
  }

  FutureOr<void> _onGetNavItems(
      GetNavItem event, Emitter<BottomNavState> emit) {}
}

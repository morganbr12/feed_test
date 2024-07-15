part of 'bottom_nav_bloc.dart';

sealed class BottomNavEvent extends Equatable {
  const BottomNavEvent();

  @override
  List<Object> get props => [];
}

class UpdateNavSelectedIndex extends BottomNavEvent {
  final int index;
  final bool isActive;

  const UpdateNavSelectedIndex({
    required this.index,
    required this.isActive,
  });

  @override
  List<Object> get props => [
    index,
    isActive,
  ];
}

class GetNavItem extends BottomNavEvent {
  const GetNavItem();

  @override
  List<Object> get props => [];
}

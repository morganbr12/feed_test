part of 'home_bloc.dart';


class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class FetchPosts extends HomeEvent {}


class UpdateSelectedFeedOption extends HomeEvent {
  final SelectedFeedOption selectedFeedOption;

  const UpdateSelectedFeedOption({required this.selectedFeedOption});

  @override
  List<Object> get props => [
    selectedFeedOption,
  ];
}
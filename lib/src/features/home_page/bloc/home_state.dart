part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<CreatedPost> posts;
  final SelectedFeedOption selectedFeedOption;
  final AppStatus appStatus;

  const HomeState({
    this.posts = const [],
    this.selectedFeedOption = SelectedFeedOption.publicFeed,
    this.appStatus = const InitialAppStatus(),
  });

  HomeState copyWith({
    List<CreatedPost>? posts,
    SelectedFeedOption? selectedFeedOption,
    AppStatus? appStatus,
}) => HomeState(
    posts: posts ?? this.posts,
    selectedFeedOption: selectedFeedOption ?? this.selectedFeedOption,
    appStatus: appStatus ?? this.appStatus,
  );

  @override
  List<Object> get props => [
        posts,
        selectedFeedOption,
        appStatus,
      ];
}

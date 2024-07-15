import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:feed_test/src/features/home_page/enum/selected_enum.dart';

import '../../../core/share/app_status/app_status.dart';
import '../../../models/data/created_post.dart';
import '../../../models/post_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final CreatedPostModel postModel;

  HomeBloc(this.postModel) : super(const HomeState()) {
    on<FetchPosts>(_onFetchPosts);
    on<UpdateSelectedFeedOption>(_onUpdateSelectedOption);
  }

  void _onFetchPosts(FetchPosts event, Emitter<HomeState> emit) {
    final posts = postModel.postCreated;
    emit(HomeState(posts: posts));
  }

  void _onUpdateSelectedOption(
      UpdateSelectedFeedOption event,
      Emitter<HomeState> emit,
      ) {
    emit(
      state.copyWith(
        selectedFeedOption: event.selectedFeedOption,
        appStatus: SelectedOptionUpdated(),
      ),
    );

    // Update appStatus to InitialAppStatus() after a short delay or condition
    emit(
      state.copyWith(
        appStatus: const InitialAppStatus(),
      ),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:feed_test/src/features/create_post/enum/selected_enum.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/share/app_status/app_status.dart';

part 'create_post_event.dart';

part 'create_post_state.dart';

class CreatePostBloc extends Bloc<CreatePostEvent, CreatePostState> {
  CreatePostBloc() : super(const CreatePostState()) {
    on<UpdateSelectedOption>(_onUpdateSelectedOption);
    on<UpdateTopicSelected>(_onUpdateSelectedTopics);
    on<UpdateImageFile>(_onImageUpdated);
  }

  void _onUpdateSelectedOption(
      UpdateSelectedOption event,
      Emitter<CreatePostState> emit,
      ) {
    emit(
      state.copyWith(
        selectedOption: event.selectedOption,
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

  void _onUpdateSelectedTopics(
      UpdateTopicSelected event,
      Emitter<CreatePostState> emit,
      ) {
    final updatedIndices = List<int>.from(state.selectedIndices);
    if (updatedIndices.contains(event.selectedIndex)) {
      updatedIndices.remove(event.selectedIndex);
    } else {
      updatedIndices.add(event.selectedIndex);
    }

    emit(state.copyWith(
      selectedIndices: updatedIndices,
      appStatus: SelectedOptionUpdated(),
    ));

    // Update appStatus to InitialAppStatus() after a short delay or condition
    emit(state.copyWith(appStatus: const InitialAppStatus()));
  }

  Future<void> _onImageUpdated(
      UpdateImageFile event,
      Emitter<CreatePostState> emit
      ) async {
    final ImagePicker picker = ImagePicker();
    final XFile? file;
    if(event.type == 'camera') {
      file = await picker.pickImage(source: ImageSource.camera);
    } else {
      file = await picker.pickImage(source: ImageSource.gallery);
    }

    if (file == null) return;

    emit(state.copyWith(imageFile: file));
  }
}

part of 'create_post_bloc.dart';

class CreatePostState extends Equatable {
  final bool isOptionActive;
  final List<int> selectedIndices;
  final SelectedOption selectedOption;
  final AppStatus appStatus;
  final XFile? imageFile;

  const CreatePostState({
    this.isOptionActive = false,
    this.selectedOption = SelectedOption.public,
    this.appStatus = const InitialAppStatus(),
    this.selectedIndices = const [],
    this.imageFile,
  });

  CreatePostState copyWith({
    bool? isOptionActive,
    SelectedOption? selectedOption,
    AppStatus? appStatus,
    List<int>? selectedIndices,
    XFile? imageFile,
  }) {
    return CreatePostState(
      isOptionActive: isOptionActive ?? this.isOptionActive,
      selectedOption: selectedOption ?? this.selectedOption,
      appStatus: appStatus ?? this.appStatus,
      selectedIndices: selectedIndices ?? this.selectedIndices,
      imageFile: imageFile ?? this.imageFile,
    );
  }

  @override
  List<Object?> get props => [
    isOptionActive,
    selectedOption,
    appStatus,
    selectedIndices,
    imageFile,
  ];
}



part of 'create_post_bloc.dart';

class CreatePostEvent extends Equatable {
  const CreatePostEvent();

  @override
  List<Object> get props => [];
}


class UpdateSelectedOption extends CreatePostEvent {
  final SelectedOption selectedOption;

  const UpdateSelectedOption({required this.selectedOption});

  @override
  List<Object> get props => [
    selectedOption,
  ];
}

class UpdateTopicSelected extends CreatePostEvent {
  final int selectedIndex;

  const UpdateTopicSelected(this.selectedIndex);

  @override
  List<Object> get props => [selectedIndex];
}


class UpdateImageFile extends CreatePostEvent {
  final String type;

  const UpdateImageFile(this.type);

  @override
  List<Object> get props => [type];
}

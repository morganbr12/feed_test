import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_post.freezed.dart';

part 'created_post.g.dart';

@freezed
class CreatedPost with _$CreatedPost {
  const factory CreatedPost({
    required String creatorName,
    required String topic,
    required String description,
    String? imageUrl,
}) = _CreatedPost;

  factory CreatedPost.fromJson(Map<String, dynamic> json) => _$CreatedPostFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:givit/shared/model/profile/profile.dart';

part 'comment.freezed.dart';
part 'comment.g.dart';

@freezed
class Comment with _$Comment {
  factory Comment({
    @Default('') String id,
    required Profile commenter,
    required String text,
    String? hashTag,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  static List<Comment> get comments => [
        Comment(
            commenter: Profile.dummy, text: 'ahmet senin ürününü gönderdim'),
        Comment(commenter: Profile.dummy, text: 'zeynep kargoya verdim'),
        Comment(commenter: Profile.dummy, text: 'murat iki güne gelir'),
        Comment(
            commenter: Profile.dummy,
            text: 'yücel talebe cevap verebilir misin?'),
      ];
}

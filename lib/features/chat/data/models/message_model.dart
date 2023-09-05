import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
@JsonSerializable()
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({String? msg, DateTime? time, String? type}) =
      _ChatMessageModel;

  const ChatMessageModel._();

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}

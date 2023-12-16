import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_response.g.dart';
part 'upload_response.freezed.dart';

@freezed
class UploadResponse with _$UploadResponse {
  const factory UploadResponse({
    required String url,
  }) = _UploadResponse;

  factory UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseFromJson(json);
}

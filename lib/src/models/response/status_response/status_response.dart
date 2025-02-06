import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/status_response.freezed.dart';
part 'gen/status_response.g.dart';

@freezed
class StatusResponse with _$StatusResponse {
  factory StatusResponse({
    String? name,
    String? value,
  }) = _StatusResponse;

  factory StatusResponse.fromJson(Map<String, dynamic> json) =>
      _$StatusResponseFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/auth_response.freezed.dart';

part 'gen/auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    String? token,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

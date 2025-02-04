import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/login_request.freezed.dart';
part 'gen/login_request.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  factory LoginRequest({
    String? username,
    String? password,
    String? type,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}
